import os.path as osp

import torch_geometric.transforms as T
from torch_geometric.datasets import Planetoid


def get_planetoid_dataset(name, normalize_features=False, transform=None):
    path = osp.join(osp.dirname(osp.realpath(__file__)), '..', 'data', name)
    dataset = Planetoid(path, name)

    if transform is not None and normalize_features:
        dataset.transform = T.Compose([T.NormalizeFeatures(), transform])
    elif normalize_features:
        dataset.transform = T.NormalizeFeatures()
    elif transform is not None:
        dataset.transform = transform

    return dataset

def print_dataset(dataset):
    data = dataset[0]
    print('Name', dataset)
    print('Nodes', data.num_nodes)
    print('Edges', data.num_edges // 2)
    print('Features', dataset.num_features)
    print('Classes', dataset.num_classes)
    print('Label rate', data.train_mask.sum().item() / data.num_nodes)
    print()


for name in ['Cora', 'CiteSeer', 'PubMed']:
    path = osp.join(osp.dirname(osp.realpath(__file__)), '..', 'data', name)
    if osp.exists(path) is False:
        print_dataset(get_planetoid_dataset(name))
