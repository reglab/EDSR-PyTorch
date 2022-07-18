#!/bin/bash
#SBATCH --begin=now
#SBATCH --job-name=rgb-footprint-extract
#SBATCH --mail-type=ALL
#SBATCH --mail-user=nathanjo@law.stanford.edu
#SBATCH --partition=owners
#SBATCH --time=00:30:00
#SBATCH --mem=16GB
#SBATCH --gres=gpu:1

singularity exec --nv $GROUP_HOME/singularity/cafo_permit+tcm_11-28-21.sif python3 main.py --data_test Demo --scale 4 --pre_train download --test_only --save_results