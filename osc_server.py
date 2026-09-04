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

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "stable-audio-tools"))
from stable_audio_tools.models.pretrained import get_pretrained_model
from stable_audio_tools.inference.generation import generate_diffusion_cond, generate_diffusion_cond_inpaint
from huggingface_hub import login

path = os.getcwd()

device = "mps" if torch.backends.mps.is_available() else "cuda" if torch.cuda.is_available() else "cpu"
torch.set_default_dtype(torch.float32)

print("device : ", device)

client = SimpleUDPClient("127.0.0.1", 9001)


if "model.pt" not in os.listdir(path + "/models"):
    if "log.txt" in os.listdir(path) :
        with open(path +  "/log.txt" ) as txt_file:
            log = txt_file.readlines()
    else:
        log = input("Enter huggingface loggin")
    login(str(log))
    
    model, model_config = get_pretrained_model("stabilityai/stable-audio-open-small")#.to(device)
  
    model = model.to(device)
    torch.save(model, path + "/models/model.pt")
    
else: 
    model = torch.load(path + "/models" + "/model.pt", 
                       weights_only=False,
                    #    torch_dtype=torch.float32,
                       map_location=device).to(device)

    with open(path +  "/base_model_config.json") as json_file:
        model_config = json.load(json_file)

sample_rate = model_config["sample_rate"]
sample_size = model_config["sample_size"]
print("model sample rate", sample_rate)
print(model.diffusion_objective)
print(model.dist_shift)
model.diffusion_objective = "rectified_flow"

print(model.diffusion_objective)

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
    print(path + '/take.wav')
    
    in_audio, sr = librosa.load(path + "/take.wav", mono = True, sr = None)
    
    in_audio = in_audio.T
   
    print("audio shape", in_audio.shape)
    in_audio = np.nan_to_num(in_audio)

    if int(sr) != int(sample_rate):
        in_audio = librosa.resample(in_audio.T, orig_sr=sr, target_sr=sample_rate).T  
    
    if cumulate > 0.1:
        gen_audio, sr_gen = librosa.load(path + "/gen.wav", mono = True, sr = None)
        gen_audio = gen_audio.T
        
            
        gen_audio = np.nan_to_num(gen_audio)
        print("gen audio shape", gen_audio.shape)
        
        if sr_gen != sample_rate:
            gen_audio = librosa.resample(gen_audio.T, orig_sr=sr_gen, target_sr=sample_rate).T
             
        if gen_audio.shape[0] < in_audio.shape[0]:
            gen_audio = np.pad(gen_audio, (0, in_audio.shape[0]- gen_audio.shape[0]), constant_values=0)
        elif gen_audio.shape[0] > in_audio.shape[0]:
            gen_audio = gen_audio[:in_audio.shape[0]]
        
        in_audio = in_audio*(1-cumulate) + gen_audio*cumulate     
 
    blocksize = in_audio.shape[0]
    
    conditioning = [{
                    "prompt": prompt,
                    "seconds_total": 11
                    # "seconds_total": np.ceil(blocksize/sample_rate).astype(int)
                    }]
    
    neg_conditioning = [{
                    "prompt": "Bad quality, silence, noise",
                    "seconds_total": 11
                    # "seconds_total": np.ceil(blocksize/sample_rate).astype(int)
                    }]
     
   
    if seed <= 0:
        seed_gen = -1
    else:
        seed_gen = seed    

    print("audio shape : ", in_audio.shape)
    in_audio = in_audio/np.max(np.abs(in_audio))
    in_audio = np.nan_to_num(in_audio)
    audio_seed = torch.from_numpy(in_audio[np.newaxis, :]).to(torch.float32)

    output = generate_diffusion_cond(
                                    model,
                                    steps=n_step,
                                    cfg_scale=scale,
                                    conditioning=conditioning,
                                    # negative_conditioning=neg_conditioning,
                                    sample_size=blocksize,
                                    init_audio = ([sample_rate, audio_seed]),
                                    init_noise_level = float(init_noise),
                                    sampler_type= "euler",
                                    seed = seed_gen,
                                    device=device
                                    )
    
    # Rearrange audio batch to a single sequence
    # print(output.numpy().shape)
    output = output[0].div(torch.max(torch.abs(output))).clamp(-1, 1).cpu().numpy()

    output  = librosa.resample(output[:, :blocksize], orig_sr=sample_rate, target_sr=sr).T
    
    sf.write(path + '/gen.wav', output, sr, 'PCM_24')
    
    client.send_message("127.0.0.1:9001", ["bang"])

disp = dispatcher.Dispatcher()
disp.map("/test", stable_gen)

ip = "127.0.0.1"
port = 9000

server = osc_server.ThreadingOSCUDPServer((ip, port), disp)
print(f"Serveur OSC lancé sur {ip}:{port}")
server.serve_forever()