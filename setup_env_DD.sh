#!/usr/bin/env bash
# Creates a conda environment named "DD" from scratch with everything needed to run
# osc_server_SAO3.py, including the local stable-audio-tools checkout.
#
# The package list below is NOT copy-pasted from an existing environment: it was
# derived by starting from an empty venv and adding packages one at a time until
# `from stable_audio_tools.models.pretrained import get_pretrained_model` /
# `generate_diffusion_cond(_inpaint)` import cleanly, all three local .pt checkpoints
# (model_V1, model_noise, model_music) load with torch.load(weights_only=False), and
# an actual short generation runs end to end. Do not casually add/remove lines here
# without re-running that kind of check — stable-audio-tools' own pyproject.toml
# dependency list is NOT sufficient on its own (e.g. pytorch_lightning is imported
# unconditionally by dit.py -> lora/__init__.py -> callbacks.py, even though
# pyproject.toml files it under the optional "train" extra).
set -euo pipefail

ENV_NAME="DD"
PYTHON_VERSION="3.11"

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SAT_DIR="$REPO_ROOT/stable-audio-tools"
SAT_REMOTE="https://github.com/Stability-AI/stable-audio-tools.git"
SAT_COMMIT="3241adba4fc2a85cf5b29d9eb68d42f40a28e820"   # commit currently checked out locally

log() { printf '\n>> %s\n' "$1"; }

# --- Preflight ---------------------------------------------------------------

if ! command -v conda >/dev/null 2>&1; then
    echo "conda est introuvable dans le PATH. Installe Miniconda/Anaconda et réessaie." >&2
    exit 1
fi

if ! command -v git >/dev/null 2>&1; then
    echo "git est introuvable dans le PATH." >&2
    exit 1
fi

IS_MAC_ARM=false
if [[ "$(uname -s)" == "Darwin" && "$(uname -m)" == "arm64" ]]; then
    IS_MAC_ARM=true
fi

if [[ "$IS_MAC_ARM" != "true" ]]; then
    echo "ATTENTION : mps-flash-attn ne fournit des wheels que pour macOS Apple Silicon." >&2
    echo "            Cette étape sera ignorée sur cette machine ; osc_server_SAO3.py" >&2
    echo "            retombera sur cuda/cpu selon torch.backends.mps.is_available()." >&2
fi

if conda env list | awk '{print $1}' | grep -qx "$ENV_NAME"; then
    echo "L'environnement conda '$ENV_NAME' existe déjà." >&2
    echo "Pour repartir de zéro, supprime-le d'abord explicitement :" >&2
    echo "    conda env remove -n $ENV_NAME" >&2
    exit 1
fi

# --- 1. Create the conda environment -----------------------------------------

log "Création de l'environnement conda '$ENV_NAME' (python $PYTHON_VERSION)"
conda create -n "$ENV_NAME" "python=$PYTHON_VERSION" -y

# --- 2. Install the verified dependency closure -------------------------------

REQ_FILE="$(mktemp)"
trap 'rm -f "$REQ_FILE"' EXIT

cat > "$REQ_FILE" <<'EOF'
aiohappyeyeballs==2.7.1
aiohttp==3.14.3
aiosignal==1.4.0
alias-free-torch==0.0.6
annotated-doc==0.0.5
anyio==4.15.1
attrs==26.1.0
audioread==3.1.0
certifi==2026.7.22
cffi==2.1.1
charset-normalizer==3.5.1
cloudpickle==3.1.2
decorator==5.3.1
dill==0.4.1
einops==0.8.2
einops-exts==0.0.4
einx==0.4.3
filelock==3.32.6
frozendict==2.4.7
frozenlist==1.8.0
fsspec==2026.7.0
ftfy==6.3.1
h11==0.16.0
hf-xet==1.6.0
httpcore==1.0.9
httpx==0.28.1
huggingface_hub==1.7.1
idna==3.19
importlib-resources==5.12.0
Jinja2==3.1.6
joblib==1.6.0
librosa==0.9.2
lightning-utilities==0.15.3
llvmlite==0.49.0
markdown-it-py==4.2.0
MarkupSafe==3.0.3
mdurl==0.1.2
mpmath==1.3.0
multidict==6.8.0
networkx==3.6.1
nnaudio==0.3.4
numba==0.67.0
numpy==1.23.5
packaging==26.3
pillow==12.3.0
platformdirs==4.11.8
pooch==1.9.0
propcache==0.5.2
pycparser==3.0
Pygments==2.21.0
python-osc==1.9.3
pytorch-lightning==2.1.0
PyWavelets==1.4.1
PyYAML==6.0.3
regex==2026.9.3
requests==2.34.2
resampy==0.4.3
rich==15.0.0
safetensors==0.7.0
scikit-learn==1.7.2
scipy==1.15.3
sentencepiece==0.1.99
setuptools<81
shellingham==1.5.4
soundfile==0.13.1
soxr==1.0.0
sympy==1.14.0
threadpoolctl==3.6.0
tokenizers==0.22.2
torch==2.8.0
torchaudio==2.8.0
torchmetrics==1.9.0
torchsde==0.2.6
torchvision==0.23.0
tqdm==4.67.3
trampoline==0.1.2
transformers==5.3.0
typer==0.27.2
typing_extensions==4.16.0
urllib3==2.7.0
v-diffusion-pytorch==0.0.2
vector-quantize-pytorch==1.14.41
wcwidth==0.8.3
yarl==1.24.5
EOF

if [[ "$IS_MAC_ARM" == "true" ]]; then
    echo "mps-flash-attn==0.6.1" >> "$REQ_FILE"
fi

log "Mise à jour de pip"
conda run --no-capture-output -n "$ENV_NAME" pip install --upgrade pip

log "Installation des dépendances (~75 paquets)"
conda run --no-capture-output -n "$ENV_NAME" pip install -r "$REQ_FILE"

# --- 3. stable-audio-tools checkout --------------------------------------------
# Used via sys.path insertion at runtime (see osc_server_SAO3.py), pas via pip
# install: son pyproject.toml exige python<3.11, ce que le reste de la pile ne
# respecte pas ici. On se contente donc de garantir la présence du code source.

if [[ ! -d "$SAT_DIR/.git" ]]; then
    log "Clonage de stable-audio-tools dans $SAT_DIR"
    git clone "$SAT_REMOTE" "$SAT_DIR"
    git -C "$SAT_DIR" checkout "$SAT_COMMIT"
else
    CURRENT_COMMIT="$(git -C "$SAT_DIR" rev-parse HEAD)"
    if [[ "$CURRENT_COMMIT" != "$SAT_COMMIT" ]]; then
        echo "ATTENTION : $SAT_DIR est à $CURRENT_COMMIT, attendu $SAT_COMMIT." >&2
        echo "            Laissé tel quel (pas de checkout forcé automatique)." >&2
    else
        log "stable-audio-tools déjà présent au bon commit ($SAT_COMMIT)"
    fi
fi

log "Terminé. Active l'environnement avec : conda activate $ENV_NAME"
