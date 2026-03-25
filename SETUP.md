# How 2 Run

Note that SkyPilot is not supported on Windows! Use WSL if necessary.

## Setup

```sh
# skypilot
pip install -U "skypilot-nightly[runpod]"

# wandb
pip install wandb
wandb login
```

## Run

```sh
sky launch -c parameter-golf-job -i 1 golf.yaml
```
