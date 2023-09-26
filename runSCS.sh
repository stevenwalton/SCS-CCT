#!/bin/bash

python -m torch.distributed.launch --nproc_per_node=8 --master_port=11223 train.py \
    -c configs/datasets/cifar10.yml \
    --model cct_7_3x1_32 \
    /data/datasets/cifar-10-batches-py/
