#!/bin/bash


# https://github.com/tianocore/tianocore.github.io/wiki/ArmPlatformPkg-AArch64


svn co https://svn.code.sf.net/p/edk2/code/trunk/edk2 edk2 --username guest

wget https://releases.linaro.org/archive/13.07/components/toolchain/binaries/gcc-linaro-aarch64-linux-gnu-4.8-2013.07-1_linux.tar.xz

tar xf gcc-linaro-aarch64-linux-gnu-4.8-2013.07-1_linux.tar.xz

TOOL_PATH=`pwd`

cd edk2

. edksetup.sh `pwd`/BaseTools
make -C BaseTools

unset ARCH WORKSPACE
. edksetup.sh


GCC47_AARCH64_PREFIX=$TOOL_PATH/gcc-linaro-aarch64-linux-gnu-4.8-2013.07-1_linux/bin/ build -a AARCH64 -t GCC48 -p ArmVirtPkg/ArmVirtQemu.dsc

