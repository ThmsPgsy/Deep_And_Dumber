# README for Music Generation Project

## Overview
This project implements an audio generation system using a diffusion model. It utilizes an OSC (Open Sound Control) server to handle incoming messages that trigger audio generation based on specified parameters. The generated audio can be influenced by various settings, allowing for dynamic and creative sound synthesis.

## Project Structure
```
music_gen
├── osc_server copy.py          # Main script for the OSC server handling audio generation
├── stable_audio_tools           # Package containing audio generation and sampling tools
│   ├── __init__.py             # Initializes the stable_audio_tools package
│   ├── generation.py            # Contains the rewritten generate_diffusion_cond function
│   └── sampling.py              # Contains the rewritten sample_flow_pingpong function
├── models                       # Directory for model files
│   └── model.pt                # Pre-trained model weights for audio generation
├── requirements.txt             # Lists project dependencies
└── README.md                    # Documentation for the project
```

## Setup Instructions
1. Clone the repository or download the project files.
2. Navigate to the project directory.
3. Install the required dependencies using pip:
   ```
   pip install -r requirements.txt
   ```

## Usage
1. Ensure that you have a compatible audio model saved as `model.pt` in the `models` directory.
2. Run the OSC server script:
   ```
   python "osc_server copy.py"
   ```
3. Send OSC messages to the server to trigger audio generation. The server listens on `127.0.0.1:9000` and expects messages in the format:
   ```
   /test <scale> <init_noise> <seed> <n_step> <prompt> <cumulate> <n_slices>
   ```

## Functions
- **generate_diffusion_cond**: This function generates audio based on a diffusion model, taking into account various parameters such as scale, noise level, and conditioning prompts.
- **sample_flow_pingpong**: This function is used for sampling audio in a ping-pong manner, allowing for smooth transitions and variations in the generated sound.

## Contributing
Contributions are welcome! If you have suggestions or improvements, please feel free to submit a pull request.

## License
This project is licensed under the MIT License. See the LICENSE file for more details.