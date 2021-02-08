#!/bin/bash

if [ $SLURM_NODEID == "0" ]
then
    echo "i'm master $(hostname)"
    #ssh -v root@10.10.0.54 -p 12345 'uname -a'
    #horovodrun -np 2 -H cn2:1,cn4:1 -p 12345 python /sicong/examples/pytorch/train.py
    #enroot start --mount /home/ldap-users/sicong:/home/ldap-users/sicong \
    #    --mount /home/ldap-users/sicong/.ssh:/root/.ssh \
    #    /home/ldap-users/sicong/images/horovod-centos.sqsh \
    #    bash -c "cd /home/ldap-users/sicong/examples/pytorch; horovodrun --verbose -np 2 -H cn2:1,cn3:1 -p 12346 python train.py"
    #    #bash -c "cd ~/examples/tensorflow2 && horovodrun -np 4 -H cn2:2,cn3:2 python tensorflow2_mnist.py"
else
    echo "i'm slave $(hostname)"
    #mkdir /run/sshd
    #echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
    #echo "StrictModes no" >> /etc/ssh/sshd_config
    #/usr/sbin/sshd -p 12345; sleep infinity
    #enroot start --mount /home/ldap-users/sicong:/home/ldap-users/sicong \
    #    --mount /home/ldap-users/sicong/.ssh:/root/.ssh \
    #    /home/ldap-users/sicong/images/horovod-centos.sqsh \
    #    bash -c '/usr/sbin/sshd -p 12346; sleep infinity'
fi

#python /home/ldap-users/sicong/examples/pytorch/pytorch_synthetic_benchmark.py
python /home/ldap-users/sicong/demo/pytorch_mnist.py \
    --epochs 1 --dataset_dir /opt
