#!/bin/bash

git clone https://github.com/ARM-software/arm-trusted-firmware.git
export ARMTF_DIR="$PWD"/arm-trusted-firmware

git clone git://git.linaro.org/uefi/uefi-tools.git
export UEFI_TOOLS_DIR="$PWD"/uefi-tools
export PATH=$PATH:"$UEFI_TOOLS_DIR"

wget https://git.linaro.org/uefi/linaro-edk2.git/snapshot/linaro-edk2-armlt-16.04.tar.gz
tar xvf linaro-edk2-armlt-16.04.tar.gz

export LINARO_EDK2_DIR="$PWD"/linaro-edk2-armlt-16.04

cd $LINARO_EDK2_DIR
cp ./BaseTools/Conf/target.template Conf/target.txt
cp ./BaseTools/Conf/tools_def.template Conf/tools.def.txt
cp ./BaseTools/Conf/tools_def.template Conf/tools_def.txt
cp ./BaseTools/Conf/build_rule.template Conf/build_rule.txt

#uefi-build.sh -c LinaroPkg/platforms.config
echo -n 11 | uefi-build.sh  -T GCC49

cd ..

git clone git://git.qemu.org/qemu.git qemu.git
cd qemu.git
git submodule update --init dtc
./configure --target-list=aarch64-softmmu
make -j`nproc`

cd ..

qemu.git/aarch64-softmmu/qemu-system-aarch64  -m 1024 -cpu cortex-a57 -M virt -bios $LINARO_EDK2_DIR/Build/ArmVirtQemu-AARCH64/RELEASE_GCC49/FV/QEMU_UEFI.fd -nographic
