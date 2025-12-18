#!/bin/bash -e

echo PROVISIONING_SCRIPT: Installing NVIDIA Driver + CUDA Toolkit
wget -q https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2404/x86_64/cuda-keyring_1.1-1_all.deb
dpkg -i cuda-keyring_1.1-1_all.deb
rm -f cuda-keyring_1.1-1_all.deb
apt-get update -y
apt-get install -y nvidia-driver-pinning-580
apt-get install -y \
 cuda-toolkit-12-9 \
 cuda-drivers \
 libnccl2=2.28.9-1+cuda12.9 \
 libnccl-dev=2.28.9-1+cuda12.9 \
 nvidia-utils-580 \
 nvidia-fabricmanager \
 nvidia-xconfig

apt-mark hold libnccl2 libnccl-dev

systemctl enable nvidia-persistenced
systemctl enable nvidia-fabricmanager
