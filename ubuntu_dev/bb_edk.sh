#!/bin/bash
set -e
git clone https://github.com/pgeorgi/edk2.git edk2 
cp tiano/Csm16.bin edk2/corebootPkg/Csm/Csm16/
rm edk2/corebootPkg/Csm/Csm16/Csm16.bin
cd edk2
make -C BaseTools
source ./edksetup.sh
cp ../target.cb.txt Conf/target.txt
build -DCSM_ENABLE=TRUE
cp Build/corebootIA32/DEBUG_GCC48/FV/COREBOOT.fd ../tiano/

cd ..
cd coreboot
cp ../tiano/coreboot.config .config
make clean
make

cp build/coreboot.rom ../tiano/
