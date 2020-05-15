#!/bin/sh
#SBATCH --partition=general
#SBATCH --qos=short
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --gres=gpu:2  # Number of GPUs per node
#SBATCH --mem=3072  # memory in Mb
#SBATCH --output /home/nfs/zbao/log/kitti_1RotHead_train_%j.txt
#SBATCH --time 4:00:00  # time requested in hour:minute:second
#SBATCH --mail-type=END

cd /home/nfs/zbao/CenterNet/src
python main.py ddd_1RotHead --exp_id 3dop --dataset kitti --kitti_split 3dop --batch_size 16 --master_batch 7 --num_epochs 70 --lr_step 45,60 --gpus 0,1