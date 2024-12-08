#!/bin/bash -e

echo PROVISIONING_SCRIPT: Installing NVIDIA Driver + CUDA Toolkit

wget -q https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2604/x86_64/cuda-keyring_1.1-1_all.deb
dpkg -i cuda-keyring_1.1-1_all.deb
rm -f cuda-keyring_1.1-1_all.deb
apt update -y
apt-get install -y cuda-drivers

#runfile_12_9=cuda_12.9.1_575.57.08_linux.run
#wget -q https://developer.download.nvidia.com/compute/cuda/12.9.1/local_installers/$runfile_12_9
#sh $runfile_12_9 --toolkit --silent



#wget -q https://developer.download.nvidia.com/compute/cuda/13.2.1/local_installers/cuda_13.2.1_595.58.03_linux.run
#sh cuda_13.2.1_595.58.03_linux.run --silent --driver
#
#wget -q https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2404/x86_64/cuda-keyring_1.1-1_all.deb
#dpkg -i cuda-keyring_1.1-1_all.deb
#rm -f cuda-keyring_1.1-1_all.deb
#apt-get update -y
##apt-get install -y
## libnccl2=2.28.9-1+cuda12.9 \
## libnccl-dev=2.28.9-1+cuda12.9 
#apt-get install -y nvidia-driver-pinning-595
#apt-get install -y \
# cuda-toolkit-12-9 \
# cuda-drivers \
# nvidia-driver \
# libnccl2=2.28.9-1+cuda12.9 \
# libnccl-dev=2.28.9-1+cuda12.9 \
# nvidia-utils-595 \
# nvidia-fabricmanager \
# nvidia-xconfig \
# libnvidia-compute-595

#apt-get install -y \
# cuda-toolkit-12-9 \
# cuda-drivers \
# libnccl2=2.28.9-1+cuda12.9 \
# libnccl-dev=2.28.9-1+cuda12.9
#
#apt-mark hold libnccl2 libnccl-dev

#systemctl enable nvidia-persistenced
#systemctl enable nvidia-fabricmanager
