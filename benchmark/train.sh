#!/bin/sh


echo "Cora"
echo "===="

echo "GCN"
python models/gcn.py --dataset=Cora
python models/gcn.py --dataset=Cora --random_splits

echo "GraphSAGE"
python models/graph_sage.py --dataset=Cora
python models/graph_sage.py --dataset=Cora --random_splits

echo "GAT"
python models/gat.py --dataset=Cora
python models/gat.py --dataset=Cora --random_splits

echo "Cheby"
python models/cheb.py --dataset=Cora --num_hops=3
python models/cheb.py --dataset=Cora --num_hops=3 --random_splits

echo "SGC"
python models/sgc.py --dataset=Cora --K=3 --weight_decay=0.0005
python models/sgc.py --dataset=Cora --K=3 --weight_decay=0.0005 --random_splits

echo "ARMA"
python models/arma.py --dataset=Cora --num_stacks=2 --num_layers=1 --shared_weights
python models/arma.py --dataset=Cora --num_stacks=3 --num_layers=1 --shared_weights --random_splits

echo "APPNP"
python models/appnp.py --dataset=Cora --alpha=0.1
python models/appnp.py --dataset=Cora --alpha=0.1 --random_splits


echo "CiteSeer"
echo "========"

echo "GCN"
python models/gcn.py --dataset=CiteSeer
python models/gcn.py --dataset=CiteSeer --random_splits

echo "GraphSAGE"
python models/graph_sage.py --dataset=CiteSeer
python models/graph_sage.py --dataset=CiteSeer --random_splits

echo "GAT"
python models/gat.py --dataset=CiteSeer
python models/gat.py --dataset=CiteSeer --random_splits

echo "Cheby"
python models/cheb.py --dataset=CiteSeer --num_hops=2
python models/cheb.py --dataset=CiteSeer --num_hops=3 --random_splits

echo "SGC"
python models/sgc.py --dataset=CiteSeer --K=2 --weight_decay=0.005
python models/sgc.py --dataset=CiteSeer --K=2 --weight_decay=0.005 --random_splits

echo "ARMA"
python models/arma.py --dataset=CiteSeer --num_stacks=3 --num_layers=1 --shared_weights
python models/arma.py --dataset=CiteSeer --num_stacks=3 --num_layers=1 --shared_weights --random_splits

echo "APPNP"
python models/appnp.py --dataset=CiteSeer --alpha=0.1
python models/appnp.py --dataset=CiteSeer --alpha=0.1 --random_splits


echo "PubMed"
echo "======"

echo "GCN"
python models/gcn.py --dataset=PubMed
python models/gcn.py --dataset=PubMed --random_splits

echo "GraphSAGE"
python models/graph_sage.py --dataset=PubMed
python models/graph_sage.py --dataset=PubMed --random_splits

echo "GAT"
python models/gat.py --dataset=PubMed --lr=0.01 --weight_decay=0.001 --output_heads=8
python models/gat.py --dataset=PubMed --lr=0.01 --weight_decay=0.001 --output_heads=8 --random_splits

echo "Cheby"
python models/cheb.py --dataset=PubMed --num_hops=2
python models/cheb.py --dataset=PubMed --num_hops=2 --random_splits

echo "SGC"
python models/sgc.py --dataset=PubMed --K=2 --weight_decay=0.0005
python models/sgc.py --dataset=PubMed --K=2 --weight_decay=0.0005 --random_splits

echo "ARMA"
python models/arma.py --dataset=PubMed --num_stacks=2 --num_layers=1 --skip_dropout=0
python models/arma.py --dataset=PubMed --num_stacks=2 --num_layers=1 --skip_dropout=0.5 --random_splits

echo "APPNP"
python models/appnp.py --dataset=PubMed --alpha=0.1
python models/appnp.py --dataset=PubMed --alpha=0.1 --random_splits
