#!/bin/sh
#SBATCH --partition=general
#SBATCH --qos=short
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --gres=gpu:2  # Number of GPUs per node
#SBATCH --mem=2048  # memory in Mb
#SBATCH --output /home/nfs/zbao/log/kitti_2RotHeads_test_self_trained_model_%j.txt
#SBATCH --time 0:20:00  # time requested in hour:minute:second
#SBATCH --mail-type=END

cd /home/nfs/zbao/CenterNet/src
python test.py ddd_2RotHeads --exp_id 3dop --dataset kitti --kitti_split 3dop --load_model ../exp/ddd_2RotHeads/3dop/model_best.pth