#!/bin/bash

# install software packages for building UDK2018
sudo apt-get install build-essential uuid-dev iasl git gcc-5 nasm iasl qemu

# Donwload Source Code

git clone https://github.com/tianocore/edk2.git -b UDK2018

# Build Ovmf 

cd edk2

# build Tools 
make -C BaseTools/Source/C

# Build Ovmf image
OvmfPkg/build.sh  -a X64 

