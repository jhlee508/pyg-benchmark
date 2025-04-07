# PyG Benchmarks

### Contents
- [Setup](#setup)
- [Examples](examples)
- [Benchmarks](benchmark)
- [Datasets](dataset)

## Setup
```bash
# Create conda env
conda create -n pyg python=3.10
conda activate pyg

# On CUDA 11.7
pip install torch==2.0.0 torchvision==0.15.1 torchaudio==2.0.1 --index-url https://download.pytorch.org/whl/cu117

# Install PyG (torch_geometric) and pyg-lib
pip install torch_geometric
pip install pyg-lib torch_scatter torch_sparse torch_cluster torch_spline_conv -f https://data.pyg.org/whl/torch-2.0.0+cu117.html

# Downgrade numpy<2.0.0
pip install --force-reinstall --upgrade "numpy<2"
```

## Acknowledgement

The code in this repo is highly based on [pytorch_geometric](https://github.com/pyg-team/pytorch_geometric) which is provided under MIT License.