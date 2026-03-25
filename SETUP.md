# How 2 Run

This setup uses SkyPilot to orchestrate pods from RunPod, and uses W&B for artifact export.

Note that SkyPilot is not supported on Windows! Use WSL if necessary.

## Setup

```sh
python

# runpod
pip install runpod
runpod config # input api key when prompted

# skypilot
pip install "skypilot-nightly[runpod]"
# sky check # optional functionality check
```

### Venv

```sh
python3 -m venv .venv
source .venv/bin./activate
```

## Run

```sh
sky launch -c parameter-golf-job -i 1 golf.yaml
```
