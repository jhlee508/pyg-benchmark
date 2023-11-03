# PyG Benchmark

### Contents
- [Setup](#setup)
- [Examples](examples)
- [Benchmarks](benchmark)

## Setup
```bash
# Create conda env
conda env create -n pyg python=3.10
conda activate pyg

# On CUDA 11.7
conda install pytorch==2.0.0 torchvision==0.15.0 torchaudio==2.0.0 pytorch-cuda=11.7 -c pytorch -c nvidia

# Install PyG (torch_geometric) and pyg-lib
conda install pyg -c pyg
pip install pyg-lib -f https://data.pyg.org/whl/torch-2.0.0+cu117.html
```

## Reference

The code in this repo is based on [pytorch_geometric](https://github.com/pyg-team/pytorch_geometric) which is provided under MIT License.