# PyG Benchmark

Here are evaluation scripts for various `PyG` GNN models on the `Cora`, `CiteSeer`, and `PubMed` datasets.

### Datasets
Download the datasets via running as below.
```bash 
python datasets.py
```

| Dataset  | # Nodes | # Edges | # Features | # Classes |
|----------|---------|---------|------------|-----------|
| Cora     | 2,708   | 5,278   | 1,433      | 7         | 
| CiteSeer | 3,327   | 4,552   | 3,703      | 6         |
| PubMed   | 19,717  | 44,324  | 500        | 3         |

### Models
```bash
cd models/

# GCN
gcn.py
# GraphSAGE
graph_sage.py
# GAT
gat.py
# Chebyshev GCN
cheb.py
# Simplifying GCN
sgc.py
# Arma GCN
arma.py
# APPNP
appnp.py
```


## Run benchmarks

Experiment the whole evaluation benchmarks via running as below.

```bash
# Train benchmark
./train.sh

# Inference benchmark
./inference.sh
```
