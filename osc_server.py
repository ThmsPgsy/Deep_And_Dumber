from pythonosc import dispatcher
from pythonosc import osc_server
from pythonosc.udp_client import SimpleUDPClient
import os
import json
import librosa
import soundfile as sf
import numpy as np
import torch
from einops import rearrange
from stable_audio_tools.models.pretrained import get_pretrained_model
from stable_audio_tools.inference.generation import generate_diffusion_cond
from huggingface_hub import login

torch.cuda.empty_cache()
torch.cuda.reset_peak_memory_stats()
torch.cuda.reset_accumulated_memory_stats()

path = os.getcwd()

device = "mps" if torch.backends.mps.is_available() else "cuda" if torch.cuda.is_available() else "cpu"

client = SimpleUDPClient("127.0.0.1", 9001)

print(path)
print(os.listdir(path))

if "model.pt" not in os.listdir(path + "\\models"):
    # log = input("Enter huggingface loggin")
    if "log.txt" in os.listdir(path) :
        with open(path +  "\\log.txt" ) as txt_file:
            log = txt_file.readlines()
    else:
        log = input("Enter huggingface loggin")
    login(str(log))
    
    model, model_config = get_pretrained_model("stabilityai/stable-audio-open-small")#.to(device)
    model = model.to(device)
    torch.save(model, path + "\\models\\model.pt")
    
else: 
    model = torch.load(path + "\\models" + "\\model.pt", weights_only=False).to(device)
    with open(path +  "\\base_model_config.json") as json_file:
        model_config = json.load(json_file)
# model, model_config = get_pretrained_model(path + "\\models" + "\\model.pt")#.to(device)
# model = model.to(device)
sample_rate = model_config["sample_rate"]
print("model sample rate", sample_rate)

# def generate_diffusion_cond(model, steps, cfg_scale, conditioning, sample_size, init_audio, init_noise_level, sampler_type, seed, device):
#     torch.manual_seed(seed)
#     model.eval()
    
#     init_audio_tensor = torch.tensor(init_audio[1]).to(device).unsqueeze(0)
#     noise = torch.randn(init_audio_tensor.shape).to(device) * init_noise_level
#     audio = init_audio_tensor + noise

#     for step in range(steps):
#         with torch.no_grad():
#             audio = model(audio, conditioning, cfg_scale)
    
#     return audio

# def sample_flow_pingpong(model, audio, steps, cfg_scale, seed):
#     torch.manual_seed(seed)
#     model.eval()
    
#     audio = audio.unsqueeze(0)
#     for step in range(steps):
#         with torch.no_grad():
#             audio = model(audio, cfg_scale)
    
#     return audio.squeeze(0)

def stable_gen(addr, arg1, arg2, arg3, arg4, arg5, arg6, arg7):
    global model, path, sample_rate
    print(f"Message reçu depuis {addr}")
    
    scale = float(arg1)
    init_noise = float(arg2)
    seed = int(arg3)
    n_step = int(arg4)
    prompt = arg5.replace("\n", " ")
    cumulate = float(arg6)
    n_slices = int(arg7)
    
    print(f"Arg1: {scale}")
    print(f"Arg2: {init_noise}")
    print(f"Arg3: {seed}")
    print(f"Arg4: {n_step}")
    print(f"Arg5: {prompt}")
    print(f"arg6 : {cumulate}")
    print(f"arg7 : {n_slices}")
    print(path + '\\take.wav')
    
    in_audio, sr = librosa.load(path + "\\take.wav", mono = False, sr=sample_rate)
    # in_audio, sr = sf.read(path + "\\take.wav", samplerate=sample_rate, fill_value=0)
    
    in_audio = in_audio.T
   
    print("audio shape", in_audio.shape)
    while len(in_audio) == 0:
        in_audio, sr = sf.read(path + "\\take.wav")
        
    
    in_audio = np.nan_to_num(in_audio).astype(np.float32)
    print("in audio shape", in_audio.shape)   
    if len(in_audio.shape) < 2:
        in_audio = np.stack([in_audio, in_audio], axis = 0) 
        print("new audio shape", in_audio.shape)
    
    amp_init = np.max(np.abs(in_audio)) 
    in_audio = in_audio/amp_init * 0.999

    if int(sr) != int(sample_rate):
        in_audio = librosa.resample(in_audio.T, orig_sr=sr, target_sr=sample_rate, mono = False).T  
    
    if cumulate > 0:
        gen_audio, sr = sf.read(path + "\\gen.wav")
        while len(gen_audio) == 0:
            gen_audio, sr = sf.read(path + "\\gen.wav")
        gen_audio = np.nan_to_num(gen_audio).astype(np.float32)
        print("gen audio shape", gen_audio.shape)
        # if len(gen_audio.shape) < 2:
        #     gen_audio = np.stack([gen_audio, gen_audio], axis = 0) 
        # #     print("new audio shape", gen_audio.shape)
        # if sr != sample_rate:
        #     gen_audio = librosa.resample(gen_audio, orig_sr=sr, target_sr=sample_rate
        max_gen = np.max(np.abs(gen_audio)) 
        if max_gen  > 0 :
            gen_audio = gen_audio/max_gen * 0.999
        
        if sr != sample_rate:
            gen_audio = librosa.resample(gen_audio.T, orig_sr=sr, target_sr=sample_rate, mono = False).T
             
        if gen_audio.shape[0] < in_audio.shape[0]:
            gen_audio = np.pad(gen_audio, ((0, in_audio.shape[0]- gen_audio.shape[0]), (0,0)), constant_values=0)
        elif gen_audio.shape[0] > in_audio.shape[0]:
            gen_audio = gen_audio[:in_audio.shape[0], :]
        
        in_audio = in_audio*(1-cumulate) + gen_audio*cumulate     
 
    blocksize = in_audio.shape[0]
    in_audio = np.nan_to_num(in_audio).astype(np.float16)
    max_index = np.argmax(in_audio)
    # in_audio = np.mean(in_audio, axis = 0)[np.newaxis, :]
    print("blocksize", blocksize)
    
    conditioning = [{
                    "prompt": prompt,
                    "seconds_total": 12
                    # "seconds_total": np.ceil(blocksize/sample_rate).astype(int)
                    }]
    
    neg_conditioning = [{
                    "prompt": "Bad quality, silence",
                    "seconds_total": 12
                    # "seconds_total": np.ceil(blocksize/sample_rate).astype(int)
                    }]
    
    final_audio = []    
    # sliced_audio = np.transpose(np.reshape(in_audio, [in_audio.shape[-2], n_slices, blocksize//n_slices]  ), (1,0,2))
    
    #for i in range(n_slices):  
    if seed <= 0:
        seed_gen = np.random.randint(1, 99999)  
    else:
        seed_gen = seed    
    # slice_audio = sliced_audio[:, i, :]  
    # print(np.sum(slice_audio))
    # slice_audio = np.mean(slice_audio, axis=0)[np.newaxis]
    print("audio shape : ", in_audio.shape)
    audio_seed = torch.from_numpy(in_audio.T).to(torch.float32)
    # audio_seed = audio_seed.to(device)
    output = generate_diffusion_cond(
                                    model,
                                    steps=n_step,
                                    cfg_scale=scale,
                                    conditioning=conditioning,
                                    negative_conditioning=neg_conditioning,
                                    sample_size=int(blocksize//n_slices),
                                    init_audio = (int(sample_rate), audio_seed),
                                    init_noise_level = init_noise,
                                    sampler_type="pingpong",
                                    seed = seed_gen,
                                    device=device
                                    )
    
    output = rearrange(output, "b d n -> d (b n)")
    
    output = output.div(torch.max(torch.abs(output))).clamp(-1, 1).cpu()
    # output = output.cpu()
    # print(output)
    # output = output/np.max(np.abs(output))
    output = amp_init*output * 0.999
    
    final_audio.append(output.numpy().T)
    torch.cuda.empty_cache()
    
    final_audio = np.concatenate(final_audio, axis = 0)
    final_audio = np.pad(final_audio, [[0, blocksize - len(final_audio)],[0, 0]])
    final_audio = np.nan_to_num(final_audio)
    print(final_audio)
    print("out shape", final_audio.shape)
    # final_audio = librosa.resample(final_audio, orig_sr=sample_rate, target_sr=sr)
    sf.write(path + '\\gen.wav', final_audio, sample_rate, format = "wav")#, subtype='PCM_24')
    client.send_message("127.0.0.1:9001", ["bang"])

disp = dispatcher.Dispatcher()
disp.map("/test", stable_gen)

ip = "127.0.0.1"
port = 9000

server = osc_server.ThreadingOSCUDPServer((ip, port), disp)
print(f"Serveur OSC lancé sur {ip}:{port}")
server.serve_forever()