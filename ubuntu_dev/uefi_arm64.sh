!/bin/bash
# https://github.com/tianocore/tianocore.github.io/wiki/ArmPlatformPkg-AArch64

# git clone http://git.linaro.org/uefi/uefi-tools.git
# git clone https://git.linaro.org/uefi/linaro-edk2.git -b release
#https://wiki.linaro.org/ARM/UEFI#Linaro_Release_builds

pushd .

svn co https://svn.code.sf.net/p/edk2/code/trunk/edk2 edk2 --username guest

wget https://releases.linaro.org/archive/13.07/components/toolchain/binaries/gcc-linaro-aarch64-linux-gnu-4.8-2013.07-1_linux.tar.xz

tar xf gcc-linaro-aarch64-linux-gnu-4.8-2013.07-1_linux.tar.xz

#wget https://releases.linaro.org/components/toolchain/binaries/4.9-2016.02/aarch64-linux-gnu/gcc-linaro-4.9-2016.02-x86_64_aarch64-linux-gnu.tar.xz
#tar xvf gcc-linaro-4.9-2016.02-x86_64_aarch64-linux-gnu.tar.xz


TOOL_PATH=`pwd`

cd edk2

. edksetup.sh `pwd`/BaseTools
make -C BaseTools

unset ARCH WORKSPACE
. edksetup.sh

cp ./BaseTools/Conf/target.template Conf/target.txt
cp ./BaseTools/Conf/tools_def.template Conf/tools.def.txt
cp ./BaseTools/Conf/tools_def.template Conf/tools_def.txt
cp ./BaseTools/Conf/build_rule.template Conf/build_rule.txt


GCC48_AARCH64_PREFIX=$TOOL_PATH/gcc-linaro-aarch64-linux-gnu-4.8-2013.07-1_linux/bin/aarch64-linux-gnu- build -a AARCH64 -t GCC48 -p ArmVirtPkg/ArmVirtQemu.dsc  -D TTY_TERMINAL      



popd

git clone git://git.qemu.org/qemu.git qemu.git
cd qemu.git
git submodule update --init dtc
./configure --target-list=aarch64-softmmu
make -j`nproc`

cd ..


#qemu.git/aarch64-softmmu/qemu-system-aarch64  -m 1024 -cpu cortex-a57 -M virt -bios edk2/Build/ArmVirtQemu-AARCH64/DEBUG_GCC48/FV/QEMU_EFI.fd  -nographic -hda ./armos.img
qemu.git/aarch64-softmmu/qemu-system-aarch64  -m 1024 -cpu cortex-a57 -M virt -bios edk2/Build/ArmVirtQemu-AARCH64/DEBUG_GCC48/FV/QEMU_EFI.fd  -nographic 


