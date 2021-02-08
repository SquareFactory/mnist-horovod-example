#!/bin/bash

#SBATCH --job-name=dmnist
#SBATCH --output=mnist_%A.out
#SBATCH --error=mnist_%A.err
#SBATCH --nodes=1
##SBATCH --nodelist=cn[3,4]
#SBATCH --mem=0			# all mem avail
#SBATCH --ntasks-per-node=2
#SBATCH --gres=gpu:2    # GPU per node
#SBATCH --partition=main,interactive
#SBATCH --exclusive

##SBATCH --cpus-per-gpu=16

export LD_LIBRARY_PATH=/usr/local/lib64/pmix-2.2.4/lib64:$LD_LIBRARY_PATH

srun --no-container-remap-root --gpus=2 --nodes=1 \
    --container-image /home/ldap-users/sicong/images/horovod.sqsh \
    --container-mounts=/home/ldap-users/sicong:/home/ldap-users/sicong \
    bash -c "/home/ldap-users/sicong/demo/core.sh"
    #--container-mounts=/home/ldap-users/sicong:/home/ldap-users/sicong,/home/ldap-users/sicong/.ssh:/root/.ssh \

#srun --gpus=2 -n1 -N1 a.sh

### Single node
#srun --gpus=2 --no-container-remap-root --nodes=1 -n2 --container-image /home/ldap-users/sicong/images/horovod.sqsh \
#    --container-mounts=/home/ldap-users/sicong:/sicong bash -c 'cd /sicong/examples/pytorch && \
#    horovodrun -np 2 -H localhost:2 python train.py'
