#!bin/bash -l

python gcn.py \
    --dataset Cora \
    --hidden_channels 16 \
    --lr 0.0015 \
    --epochs 300 \
    --use_gdc \
    #--wandb