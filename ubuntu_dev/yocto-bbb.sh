#!/bin/bash


wget http://free-electrons.com/doc/training/yocto/yocto-labs.tar.xz
tar xf yocto-labs.tar.xz
wget http://downloads.yoctoproject.org/releases/yocto/yocto-1.5.1/\
poky-dora-10.0.1.tar.bz2
tar xf poky-dora-10.0.1.tar.bz2

wget http://downloads.yoctoproject.org/releases/yocto/yocto-1.5.1/poky-dora-10.0.1.tar.bz2
tar xf poky-dora-10.0.1.tar.bz2
cd poky-dora-10.0.1
git clone git://git.yoctoproject.org/meta-ti.git
cd meta-ti
git checkout dora
git am ~/bbb/yocto-labs/0001-beaglebone-use-the-am335x_boneblack-u-boot-configura.patch


