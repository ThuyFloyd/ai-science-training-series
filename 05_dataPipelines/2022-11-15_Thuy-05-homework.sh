#!/bin/bash -l
#COBALT -t 60
#COBALT -q single-gpu
#COBALT -A ALCFAITP
#COBALT -n 1
#COBALT --attrs filesystems=home,grand

# Set up software deps:
module load conda/2021-09-22
conda activate
# You have to point this to YOUR local copy of ai-science-training-series
cd /home/thuyfloyd/ai-science-training-series/05_dataPipelines
export TF_XLA_FLAGS="--tf_xla_auto_jit=2"
python 2022-11-15_Thuy-05-homework.py
