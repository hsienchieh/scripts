#!/bin/bash

mkdir yocto_rpi2
cd yocto_rpi2
git clone git://git.yoctoproject.org/poky.git

cd poky
git clone git://git.yoctoproject.org/meta-raspberrypi

source oe-init-build-env


echo "MACHINE = \"raspberrypi2\"" >> conf/local.conf
echo "GPU_MEM = \"16\"" >> conf/local.conf

echo "BBLAYERS += \"$HOME/yocto_rpi2/poky/meta-raspberrypi\"" >> conf/bblayers.conf

bitbake rpi-basic-image

#bitbake core-image-sato
#bitbake core-image-sato-sdk
