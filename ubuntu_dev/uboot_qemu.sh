#!/bin/bash

sudo add-apt-repository ppa:linaro-maintainers/tools
sudo apt-get install linaro-image-tools qemu-user-static qemu-system gcc-arm-linux-gnueabi g++-arm-linux-gnueabi bridge-utils


wget -c ftp://ftp.denx.de/pub/u-boot/u-boot-2016.09.tar.bz2
tar xvf u-boot-2016.09.tar.bz2
cd u-boot-2016.09/
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- vexpress_ca9x4_defconfig
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- -j16
qemu-system-arm -M vexpress-a9 -nographic -kernel u-boot

# ctrl a-x to quit

