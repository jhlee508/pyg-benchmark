#!/bin/sh


echo "Cora"
echo "===="

echo "GCN"
python models/gcn.py --dataset=Cora --inference
python models/gcn.py --dataset=Cora --random_splits --inference
python models/gcn.py --dataset=Cora --inference --profile
python models/gcn.py --dataset=Cora --random_splits --inference --profile

echo "GraphSAGE"
python models/graph_sage.py --dataset=Cora --inference
python models/graph_sage.py --dataset=Cora --random_splits --inference
python models/graph_sage.py --dataset=Cora --inference --profile
python models/graph_sage.py --dataset=Cora --random_splits --inference --profile

echo "GAT"
python models/gat.py --dataset=Cora --inference
python models/gat.py --dataset=Cora --random_splits --inference
python models/gat.py --dataset=Cora --inference --profile
python models/gat.py --dataset=Cora --random_splits --inference --profile

echo "Cheby"
python models/cheb.py --dataset=Cora --num_hops=3 --inference
python models/cheb.py --dataset=Cora --num_hops=3 --random_splits --inference
python models/cheb.py --dataset=Cora --num_hops=3 --inference --profile
python models/cheb.py --dataset=Cora --num_hops=3 --random_splits --inference --profile

echo "SGC"
python models/sgc.py --dataset=Cora --K=3 --weight_decay=0.0005 --inference
python models/sgc.py --dataset=Cora --K=3 --weight_decay=0.0005 --random_splits --inference
python models/sgc.py --dataset=Cora --K=3 --weight_decay=0.0005 --inference --profile
python models/sgc.py --dataset=Cora --K=3 --weight_decay=0.0005 --random_splits --inference --profile

echo "ARMA"
python models/arma.py --dataset=Cora --num_stacks=2 --num_layers=1 --shared_weights=True --inference
python models/arma.py --dataset=Cora --num_stacks=3 --num_layers=1 --shared_weights=True --random_splits --inference
python models/arma.py --dataset=Cora --num_stacks=2 --num_layers=1 --shared_weights=True --inference --profile
python models/arma.py --dataset=Cora --num_stacks=3 --num_layers=1 --shared_weights=True --random_splits --inference --profile

echo "APPNP"
python models/appnp.py --dataset=Cora --alpha=0.1 --inference
python models/appnp.py --dataset=Cora --alpha=0.1 --random_splits --inference
python models/appnp.py --dataset=Cora --alpha=0.1 --inference --profile
python models/appnp.py --dataset=Cora --alpha=0.1 --random_splits --inference --profile


echo "CiteSeer"
echo "========"

echo "GCN"
python models/gcn.py --dataset=CiteSeer --inference
python models/gcn.py --dataset=CiteSeer --random_splits --inference
python models/gcn.py --dataset=CiteSeer --inference --profile
python models/gcn.py --dataset=CiteSeer --random_splits --inference --profile

echo "GraphSAGE"
python models/graph_sage.py --dataset=CiteSeer --inference
python models/graph_sage.py --dataset=CiteSeer --random_splits --inference
python models/graph_sage.py --dataset=CiteSeer --inference --profile
python models/graph_sage.py --dataset=CiteSeer --random_splits --inference --profile

echo "GAT"
python models/gat.py --dataset=CiteSeer --inference
python models/gat.py --dataset=CiteSeer --random_splits --inference
python models/gat.py --dataset=CiteSeer --inference --profile
python models/gat.py --dataset=CiteSeer --random_splits --inference --profile

echo "Cheby"
python models/cheb.py --dataset=CiteSeer --num_hops=2 --inference
python models/cheb.py --dataset=CiteSeer --num_hops=3 --random_splits --inference
python models/cheb.py --dataset=CiteSeer --num_hops=2 --inference --profile
python models/cheb.py --dataset=CiteSeer --num_hops=3 --random_splits --inference --profile

echo "SGC"
python models/sgc.py --dataset=CiteSeer --K=2 --weight_decay=0.005 --inference
python models/sgc.py --dataset=CiteSeer --K=2 --weight_decay=0.005 --random_splits --inference
python models/sgc.py --dataset=CiteSeer --K=2 --weight_decay=0.005 --inference --profile
python models/sgc.py --dataset=CiteSeer --K=2 --weight_decay=0.005 --random_splits --inference --profile

echo "ARMA"
python models/arma.py --dataset=CiteSeer --num_stacks=3 --num_layers=1 --shared_weights=True --inference
python models/arma.py --dataset=CiteSeer --num_stacks=3 --num_layers=1 --shared_weights=True --random_splits --inference
python models/arma.py --dataset=CiteSeer --num_stacks=3 --num_layers=1 --shared_weights=True --inference --profile
python models/arma.py --dataset=CiteSeer --num_stacks=3 --num_layers=1 --shared_weights=True --random_splits --inference --profile

echo "APPNP"
python models/appnp.py --dataset=CiteSeer --alpha=0.1 --inference
python models/appnp.py --dataset=CiteSeer --alpha=0.1 --random_splits --inference
python models/appnp.py --dataset=CiteSeer --alpha=0.1 --inference --profile
python models/appnp.py --dataset=CiteSeer --alpha=0.1 --random_splits --inference --profile


echo "PubMed"
echo "======"

echo "GCN"
python models/gcn.py --dataset=PubMed --inference
python models/gcn.py --dataset=PubMed --random_splits --inference
python models/gcn.py --dataset=PubMed --inference --profile
python models/gcn.py --dataset=PubMed --random_splits --inference --profile

echo "GraphSAGE"
python models/graph_sage.py --dataset=CiteSeer --inference
python models/graph_sage.py --dataset=CiteSeer --random_splits --inference
python models/graph_sage.py --dataset=CiteSeer --inference --profile
python models/graph_sage.py --dataset=CiteSeer --random_splits --inference --profile

echo "GAT"
python models/gat.py --dataset=PubMed --lr=0.01 --weight_decay=0.001 --output_heads=8 --inference
python models/gat.py --dataset=PubMed --lr=0.01 --weight_decay=0.001 --output_heads=8 --random_splits --inference
python models/gat.py --dataset=PubMed --lr=0.01 --weight_decay=0.001 --output_heads=8 --inference --profile
python models/gat.py --dataset=PubMed --lr=0.01 --weight_decay=0.001 --output_heads=8 --random_splits --inference --profile

echo "Cheby"
python models/cheb.py --dataset=PubMed --num_hops=2 --inference
python models/cheb.py --dataset=PubMed --num_hops=2 --random_splits --inference
python models/cheb.py --dataset=PubMed --num_hops=2 --inference --profile
python models/cheb.py --dataset=PubMed --num_hops=2 --random_splits --inference --profile

echo "SGC"
python models/sgc.py --dataset=PubMed --K=2 --weight_decay=0.0005 --inference
python models/sgc.py --dataset=PubMed --K=2 --weight_decay=0.0005 --random_splits --inference
python models/sgc.py --dataset=PubMed --K=2 --weight_decay=0.0005 --inference --profile
python models/sgc.py --dataset=PubMed --K=2 --weight_decay=0.0005 --random_splits --inference --profile

echo "ARMA"
python models/arma.py --dataset=PubMed --num_stacks=2 --num_layers=1 --skip_dropout=0 --inference
python models/arma.py --dataset=PubMed --num_stacks=2 --num_layers=1 --skip_dropout=0.5 --random_splits --inference
python models/arma.py --dataset=PubMed --num_stacks=2 --num_layers=1 --skip_dropout=0 --inference --profile
python models/arma.py --dataset=PubMed --num_stacks=2 --num_layers=1 --skip_dropout=0.5 --random_splits --inference --profile

echo "APPNP"
python models/appnp.py --dataset=PubMed --alpha=0.1 --inference
python models/appnp.py --dataset=PubMed --alpha=0.1 --random_splits --inference
python models/appnp.py --dataset=PubMed --alpha=0.1 --inference --profile
python models/appnp.py --dataset=PubMed --alpha=0.1 --random_splits --inference --profile
