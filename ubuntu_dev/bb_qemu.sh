#!/bin/bash 

git clone git://git.qemu-project.org/qemu.git
cd qemu

CC="gcc -w" ./configure --enable-debug --target-list="i386-softmmu"

make -j`nproc`

