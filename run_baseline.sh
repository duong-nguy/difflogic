#!/bin/bash
pip install .
pip install -r experiments/requirements.txt 
# Run experiments with different datasets and hyperparameters
mkdir results
python experiments/main_baseline.py  -bs 100 --dataset monk1 -ni 2 -ef 1_000 -k  8 -l 2 --infer_time
python experiments/main_baseline.py  -bs 100 --dataset monk2 -ni 2 -ef 1_000 -k  8 -l 2 --infer_time
python experiments/main_baseline.py  -bs 100 --dataset monk3 -ni 2 -ef 1_000 -k  8 -l 2 --infer_time
# python experiments/main.py  -eid 526010 -bs 100 -t 20 --dataset adult         -ni 100_000 -ef 1_000 -k 256 -l 5 --compile_model --packbits_eval
# python experiments/main.py  -eid 526020 -bs 100 -t 20 --dataset breast_cancer -ni 100_000 -ef 1_000 -k 128 -l 5 --compile_model --packbits_eval
# Mnist
# python experiments/main.py	-eid 526030  -bs 100 -t  10 --dataset mnist20x20 -ni 200_000 -ef 1_000 -k  8_000 -l 6 --compile_model --packbits_eval
# python experiments/main.py  -eid 526040	 -bs 100 -t  30 --dataset mnist      -ni 200_000 -ef 1_000 -k 64_000 -l 6 --compile_model --packbits_eval
# Cifar-10
# python experiments/main.py	-eid 526050  -bs 100 -t 100 --dataset cifar-10-3-thresholds  -ni 200_000 -ef 1_000 -k    12_000 -l 4 --compile_model --packbits_eval
# python experiments/main.py	-eid 526060  -bs 100 -t 100 --dataset cifar-10-3-thresholds  -ni 200_000 -ef 1_000 -k   128_000 -l 4 --compile_model --packbits_eval
# python experiments/main.py	-eid 526070  -bs 100 -t 100 --dataset cifar-10-31-thresholds -ni 200_000 -ef 1_000 -k   256_000 -l 5 --compile_model --packbits_eval
# python experiments/main.py	-eid 526080  -bs 100 -t 100 --dataset cifar-10-31-thresholds -ni 200_000 -ef 1_000 -k   512_000 -l 5 --compile_model --packbits_eval
# python experiments/main.py	-eid 526090  -bs 100 -t 100 --dataset cifar-10-31-thresholds -ni 200_000 -ef 1_000 -k 1_024_000 -l 5 --compile_model --packbits_eval
# Stop the RunPod instance after execution
runpodctl stop pod \$RUNPOD_POD_ID
