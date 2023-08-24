#!/bin/bash

num_workers=1
num_concur_trials=10

# Create head node
ray start --head --port=6379 &
sleep 30

# Create worker node
for i in $(seq 1 $num_workers):
    do 
    ray start --address='10.67.24.210:6379' &
done
sleep 40

# SUBMIT workload to the Ray cluster
ray status
python -u hello_tune.py --num-samples=99 --max-concurrent-trials=$num_concur_trials --local
exit 0