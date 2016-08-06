#!/bin/bash

mkdir c2

cd c2

wget http://releases.linaro.org/14.09/components/toolchain/binaries/gcc-linaro-aarch64-linux-gnu-4.9-2014.09_linux.tar.xz
tar xvf gcc-linaro-aarch64-linux-gnu-4.9-2014.09_linux.tar.xz 

export ARCH=arm64
export CROSS_COMPILE=aarch64-linux-gnu-
export PATH=~/c2/gcc-linaro-aarch64-linux-gnu-4.9-2014.09_linux/bin:$PATH



git clone https://github.com/hardkernel/u-boot.git -b odroidc2-v2015.01
cd u-boot
make odroidc2_config
make -j8
cd ..

git clone https://github.com/hardkernel/linux -b odroidc2-3.14.y
cd linux
git checkout jenkins-deb_s95_kernel-61

make odroidc2_defconfig
make -j8


