#!/bin/bash
sudo apt-get update
sudo apt-get install docker.io cgroup-lite

mkdir onlbuild
cd onlbuild/
git clone https://github.com/opennetworklinux/ONL.git
cd ONL/
make docker
sudo gpasswd -a ${USER} docker
sudo service docker restart
make docker
# 
#sudo echo 'GRUB_CMDLINE_LINUX="cgroup_enable=memory swapaccount=1"' >> /etc/default/grub

#sudo update-grub
