# WIP

## Results

- val_bpb: TBD
- Model parameters: TBD
- Artifact size: (TBD)B / 16MB
- Steps: TBD / 600s

## Architecture

This model implements two key concepts: a looped structure and ternary quantization. Probably, anyway.

WIP

## Training

WIP

## Run Command

```sh
# parameters WIP
torchrun --standalone --nproc_per_node=8 train_gpt.py
```

## References

[1]
R.-J. Zhu et al., “Scaling Latent Reasoning via Looped Language Models,” arXiv.org, 2025. https://arxiv.org/abs/2510.25741

‌[2]
S. Ma et al., “The Era of 1-bit LLMs: All Large Language Models are in 1.58 Bits,” arXiv.org, Feb. 27, 2024. https://arxiv.org/abs/2402.17764
