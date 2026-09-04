from pythonosc import dispatcher
from pythonosc import osc_server
from pythonosc.udp_client import SimpleUDPClient
import os
import sys
import json
import librosa
import soundfile as sf
import numpy as np
import torch
from einops import rearrange
import math
import queue
import threading

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "stable-audio-tools"))
from stable_audio_tools.models.pretrained import get_pretrained_model
from stable_audio_tools.inference.generation import generate_diffusion_cond, generate_diffusion_cond_inpaint
from huggingface_hub import login

# MPS compat: DiT's APG projection casts to float64 (dit.py:322), which Metal does
# not support, so any cfg_scale != 1.0 with apg_scale != 0.0 crashes on "mps".
# Same math in float32 on MPS (measured rel. error ~1e-6 vs the float64 reference,
# negligible next to the model's own fp16/fp32 compute); float64 kept elsewhere.
from stable_audio_tools.models.dit import DiffusionTransformer

def _apg_project_mps_safe(self, v0, v1, padding_mask=None):
    dtype = v0.dtype
    work = torch.float32 if v0.device.type == "mps" else torch.float64
    v0, v1 = v0.to(work), v1.to(work)

    if padding_mask is not None:
        mask = padding_mask.unsqueeze(1).to(work)
        v0_masked = v0 * mask
        v1_masked = v1 * mask
        v1_norm = v1_masked.norm(dim=[-1, -2], keepdim=True).clamp(min=1e-8)
        v1_normalized = v1_masked / v1_norm
        v0_parallel = (v0_masked * v1_normalized).sum(dim=[-1, -2], keepdim=True) * v1_normalized
        v0_orthogonal = (v0 - (v0 * v1_normalized).sum(dim=[-1, -2], keepdim=True) * v1_normalized) * mask
    else:
        v1 = torch.nn.functional.normalize(v1, dim=[-1, -2])
        v0_parallel = (v0 * v1).sum(dim=[-1, -2], keepdim=True) * v1
        v0_orthogonal = v0 - v0_parallel

    return v0_parallel.to(dtype), v0_orthogonal.to(dtype)

DiffusionTransformer.apg_project = _apg_project_mps_safe
print("patched DiffusionTransformer.apg_project for MPS")

path = os.getcwd()
print(path)

device = "mps" if torch.backends.mps.is_available() else "cuda" if torch.cuda.is_available() else "cpu"
torch.set_default_dtype(torch.float32)

print("device : ", device)

# stable-audio-tools only calls the CUDA flash_attn package when it's importable, and
# falls back to plain F.scaled_dot_product_attention otherwise (transformer.py:23-28) -
# which is what happens here since flash_attn requires CUDA. mps_flash_attn.replace_sdpa()
# monkey-patches that same F.scaled_dot_product_attention to route through its Metal
# Flash Attention kernel instead, with automatic fallback to native SDPA if it errors.
if device == "mps":
    import mps_flash_attn
    if mps_flash_attn.is_available():
        mps_flash_attn.replace_sdpa()

client = SimpleUDPClient("127.0.0.1", 9001)

# Bounded to 1: while a generation is running, at most one more pending order is kept.
# Any further order arriving in the meantime replaces that pending one (latest wins),
# instead of piling up behind the one already running.
job_queue = queue.Queue(maxsize=1)

def comb_inpaint_mask(gen_size, n_slices, ratio, device):
    """n_slices evenly-spaced masked bursts instead of one contiguous block, so the
    prompt-driven regeneration is spread across the whole clip instead of fading
    back to the reference audio toward the end."""
    n_slices = max(1, n_slices)
    seg_len = gen_size // n_slices
    mask_len = int(round(seg_len * ratio))
    mask = torch.ones(1, gen_size, device=device)
    for i in range(n_slices):
        seg_start = i * seg_len
        mask[:, seg_start:seg_start + mask_len] = 0
    return mask


def latent_alignment(model):
    """Latent-frame alignment required by the encoder, mirroring generation.py's
    adapt_duration_to_conditioning logic. Returns 1 when the encoder is not chunked
    (e.g. stable-audio-3-medium, which uses sliding_window instead of chunk_size)."""
    encoder = getattr(getattr(model.pretransform, "model", None), "encoder", None)
    layers = getattr(encoder, "layers", None)
    if layers is None:
        return 1
    for i, l in enumerate(layers):
        if hasattr(l, "chunk_size") and getattr(l, "sliding_window_latents", True) is None:
            stride = getattr(l, "stride", None)
            if stride is None:
                strides = getattr(encoder, "strides", [])
                stride = strides[i] if len(strides) > i else None
            if stride and stride > 0:
                return max(1, l.chunk_size // stride)
    return 1


if "model_music.pt" not in os.listdir(path + "/models/model_music/"):
    if "log.txt" in os.listdir(path) :
        with open(path +  "/log.txt" ) as txt_file:
            log = txt_file.readlines()
    else:
        log = input("Enter huggingface loggin")
    login(str(log))
    
    model_music, model_config = get_pretrained_model("stabilityai/stable-audio-3-small-music")#.to(device)
  
    model_music = model_music.to(device)
    torch.save(model_music, path + "/models/model_music/model_music.pt")
    
else: 
    model_music = torch.load(path + "/models/model_music" + "/model_music.pt", 
                       weights_only=False,
                    #    torch_dtype=torch.float32,
                       map_location=device).to(device)

    with open(path + "/models/model_music" + "/model_config.json") as json_file:
        model_config = json.load(json_file)

if "model_noise.pt" not in os.listdir(path + "/models/model_noise"):
    if "log.txt" in os.listdir(path) :
        with open(path +  "/log.txt" ) as txt_file:
            log = txt_file.readlines()
    else:
        log = input("Enter huggingface loggin")
    login(str(log))
    
    model_noise, model_config = get_pretrained_model("stabilityai/stable-audio-3-small-sfx")#.to(device)
  
    model_noise = model_noise.to(device)
    torch.save(model_noise, path + "/models/model_noise/model_noise.pt")
    
else: 
    model_noise = torch.load(path + "/models/model_noise" + "/model_noise.pt", 
                       weights_only=False,
                    #    torch_dtype=torch.float32,
                       map_location=device).to(device)

    with open(path + "/models/model_noise" + "/model_config.json") as json_file:
        model_config = json.load(json_file)

if "model.pt" not in os.listdir(path + "/models/model_V1"):
    if "log.txt" in os.listdir(path) :
        with open(path +  "/log.txt" ) as txt_file:
            log = txt_file.readlines()
    else:
        log = input("Enter huggingface loggin")
    login(str(log))
    
    model, model_config = get_pretrained_model("stabilityai/stable-audio-open-small")#.to(device)
  
    model = model.to(device)
    torch.save(model, path + "/models/model_V1/model.pt")
    
else: 
    model = torch.load(path + "/models/model_V1" + "/model.pt", 
                       weights_only=False,
                    #    torch_dtype=torch.float32,
                       map_location=device).to(device)

    with open(path + "/models/model_V1" + "/base_model_config.json") as json_file:
        model_config = json.load(json_file)



sample_rate = model_config["sample_rate"]
sample_size = model_config["sample_size"]
print("model sample rate", sample_rate)
# print(model.diffusion_objective)
# print(model.dist_shift)
# model.diffusion_objective = "rectified_flow"

# print(model.diffusion_objective)

def stable_gen(addr, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9):
    global model, path, sample_rate
    print(f"Message reçu depuis {addr}")
    
    scale = float(arg1)
    init_noise = float(arg2)
    seed = int(arg3)
    n_step = int(arg4)
    prompt = arg5.replace("\n", " ")
    cumulate = float(arg6)
    n_slices = int(arg7)
    model_type = int(arg8)
    gen_type = int(arg9)

    if gen_type == 0 : 
        prompt = "Tracktype : Instrument, " + prompt
    elif gen_type == 1 :
        prompt = "Tracktype : Music, " + prompt

    
    print(f"Arg1: {scale}")
    print(f"Arg2: {init_noise}")
    print(f"Arg3: {seed}")
    print(f"Arg4: {n_step}")
    print(f"Arg5: {prompt}")
    print(f"arg6 : {cumulate}")
    print(f"arg7 : {n_slices}")
    print(f"arg8 : {model_type}")
    print(f"arg8 : {gen_type}")
    
    in_audio, sr = librosa.load(path + "/take.wav", mono = True, sr = None)
    
    in_audio = in_audio.T
    audio_len = in_audio.shape[0]
   
    print("audio shape", in_audio.shape)
    in_audio = np.nan_to_num(in_audio)

    if int(sr) != int(sample_rate):
        in_audio = librosa.resample(in_audio.T, orig_sr=sr, target_sr=sample_rate).T  
    
    if cumulate > 0.1:
        gen_audio, sr_gen = librosa.load(path + "/gen.wav", mono = True, sr = None)
        gen_audio = gen_audio.T
        
            
        gen_audio = np.nan_to_num(gen_audio)
        
        if sr_gen != sample_rate:
            gen_audio = librosa.resample(gen_audio.T, orig_sr=sr_gen, target_sr=sample_rate).T
             
        if gen_audio.shape[0] < in_audio.shape[0]:
            gen_audio = np.pad(gen_audio, (0, in_audio.shape[0]- gen_audio.shape[0]), constant_values=0)
        elif gen_audio.shape[0] > in_audio.shape[0]:
            gen_audio = gen_audio[:in_audio.shape[0]]
        
        in_audio = in_audio*(1-cumulate) + gen_audio*cumulate     
 
    
    
    
    
   
    if seed <= 0:
        seed_gen = -1
    else:
        seed_gen = seed    

    in_audio = in_audio/np.max(np.abs(in_audio))
    in_audio = np.nan_to_num(in_audio)

    in_audio = np.concatenate([in_audio, in_audio], axis = 0)[:int(1.2*len(in_audio))]
    blocksize = in_audio.shape[0]

    audio_seed = torch.from_numpy(in_audio[np.newaxis, :]).to(torch.float32)
    

    if model_type == 0:
            conditioning = [{
                                "prompt": prompt,
                                "seconds_total": 11
                                # "seconds_total": np.ceil(blocksize/sample_rate).astype(int)
                                }]
                
            neg_conditioning = [{
                            "prompt": "Bad quality, silence,  background noise, pause",
                            "seconds_total": 11
                            # "seconds_total": np.ceil(blocksize/sample_rate).astype(int)
                            }]
            output = generate_diffusion_cond(
                                            model,
                                            steps=n_step,
                                            cfg_scale=scale,
                                            conditioning=conditioning,
                                            negative_conditioning=neg_conditioning,
                                            sample_size=blocksize,
                                            init_audio = ([sample_rate, audio_seed]),
                                            init_noise_level = float(init_noise),
                                            sampler_type= "euler",
                                            seed = seed_gen,
                                            device=device
                                            )
            
    elif model_type == 1:

        # `sample_size` must be an exact multiple of the latent alignment: the encoder rounds
        # the latent length UP (ceil) while the noise tensor uses floor(sample_size / ds_ratio).
        # 212742 samples gave ceil -> 52 latents vs floor -> 51, hence the tensor mismatch.
        ds_ratio = model.pretransform.downsampling_ratio     # 4096
        align = ds_ratio * latent_alignment(model_noise)           # 8192 chunked, 4096 unchunked

        # sample_size counts samples at the MODEL's rate (44100), not the file's (16000),
        # so it can't be derived from len(sample) directly.
        seconds_total = blocksize / sr                      # 13.30 s
        gen_size = math.ceil(seconds_total * sample_rate / align) * align
        conditioning = [{
                                        "prompt": prompt,
                                        "seconds_total": seconds_total 
                                        # "seconds_total": np.ceil(blocksize/sample_rate).astype(int)
                                        }]
                        
        neg_conditioning = [{
                        "prompt": "Bad quality, silence, background noise, pause",
                        "seconds_total": seconds_total 
                        # "seconds_total": np.ceil(blocksize/sample_rate).astype(int)
                        }]
        # init_noise doubles as the fraction of the clip handed to the prompt, spread
        # across n_slices bursts instead of one contiguous block: 0 keeps everything as
        # reference (near-copy), 1 masks the whole clip (pure prompt-driven generation).
        inpaint_mask = comb_inpaint_mask(gen_size, n_slices, float(init_noise), device)
        output = generate_diffusion_cond_inpaint(
                                        model_noise,
                                        steps=n_step,
                                        cfg_scale=scale,
                                        conditioning=conditioning,
                                        negative_conditioning=neg_conditioning,
                                        sample_size=gen_size,
                                        init_audio = ([sample_rate, audio_seed]),
                                        init_noise_level = 1.0,
                                        inpaint_audio = ([sample_rate, audio_seed]),
                                        inpaint_mask = inpaint_mask,
                                        sampler_type= "pingpong",
                                        seed = seed_gen,
                                        device=device
                                        )
    else:
        # `sample_size` must be an exact multiple of the latent alignment: the encoder rounds
        # the latent length UP (ceil) while the noise tensor uses floor(sample_size / ds_ratio).
        # 212742 samples gave ceil -> 52 latents vs floor -> 51, hence the tensor mismatch.
        ds_ratio = model.pretransform.downsampling_ratio     # 4096
        align = ds_ratio * latent_alignment(model_music)           # 8192 chunked, 4096 unchunked

        # sample_size counts samples at the MODEL's rate (44100), not the file's (16000),
        # so it can't be derived from len(sample) directly.
        seconds_total = blocksize / sr                      # 13.30 s
        gen_size = math.ceil(seconds_total * sample_rate / align) * align
        conditioning = [{
                                        "prompt": prompt,
                                        "seconds_total": seconds_total 
                                        # "seconds_total": np.ceil(blocksize/sample_rate).astype(int)
                                        }]
                        
        neg_conditioning = [{
                        "prompt": "Bad quality, silence, background noise, pause",
                        "seconds_total": seconds_total 
                        # "seconds_total": np.ceil(blocksize/sample_rate).astype(int)
                        }]
        
        # init_noise doubles as the fraction of the clip handed to the prompt, spread
        # across n_slices bursts instead of one contiguous block: 0 keeps everything as
        # reference (near-copy), 1 masks the whole clip (pure prompt-driven generation).
        inpaint_mask = comb_inpaint_mask(gen_size, n_slices, float(init_noise), device)
        output = generate_diffusion_cond_inpaint(
                                        model_music,
                                        steps=n_step,
                                        cfg_scale=scale,
                                        conditioning=conditioning,
                                        negative_conditioning=neg_conditioning,
                                        sample_size=gen_size,
                                        init_audio = ([sample_rate, audio_seed]),
                                        init_noise_level = 1.0,
                                        inpaint_audio = ([sample_rate, audio_seed]),
                                        inpaint_mask = inpaint_mask,
                                        sampler_type= "pingpong",
                                        seed = seed_gen,
                                        device=device
                                        )
    
    # Rearrange audio batch to a single sequence
    output = rearrange(output, "b d n -> d (b n)")
    output = output.div(torch.max(torch.abs(output))).clamp(-1, 1).cpu().numpy()
    


    # output  = librosa.resample(output[:, :blocksize], orig_sr=sample_rate, target_sr=sr).T
    output  = librosa.resample(output, orig_sr=sample_rate, target_sr=sr).T
    output = output[:audio_len]
    sf.write(path + '/gen.wav', output, sr, 'PCM_24')
    
    client.send_message("127.0.0.1:9001", ["bang"])

def enqueue_gen(addr, *args):
    """OSC handler: just deposits the order in the queue and returns immediately.
    The actual generation runs sequentially in gen_worker()."""
    try:
        job_queue.put_nowait((addr, args))
    except queue.Full:
        try:
            job_queue.get_nowait()  # drop the stale pending order
        except queue.Empty:
            pass
        job_queue.put_nowait((addr, args))


def gen_worker():
    while True:
        addr, args = job_queue.get()
        try:
            stable_gen(addr, *args)
        except Exception as e:
            print(f"Erreur pendant la génération : {e}")


threading.Thread(target=gen_worker, daemon=True).start()

disp = dispatcher.Dispatcher()
disp.map("/test", enqueue_gen)

ip = "127.0.0.1"
port = 9000

server = osc_server.ThreadingOSCUDPServer((ip, port), disp)
print(f"Serveur OSC lancé sur {ip}:{port}")
server.serve_forever()