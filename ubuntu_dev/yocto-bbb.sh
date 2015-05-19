#!/bin/bash

mkdir yocto_bbb
cd yocto_bbb
wget http://free-electrons.com/doc/training/yocto/yocto-labs.tar.xz
tar xf yocto-labs.tar.xz

wget http://downloads.yoctoproject.org/releases/yocto/yocto-1.5.1/poky-dora-10.0.1.tar.bz2
tar xf poky-dora-10.0.1.tar.bz2

cd poky-dora-10.0.1
git clone git://git.yoctoproject.org/meta-ti.git
cd meta-ti
git checkout dora
git am ~/yocto_bbb/yocto-labs/0001-beaglebone-use-the-am335x_boneblack-u-boot-configura.patch
cd ..

source oe-init-build-env


echo "MACHINE = \"beaglebone\"" >> conf/local.conf
echo "BBLAYERS += \"$HOME/yocto_bbb/poky-dora-10.0.1/meta-ti\"" >> conf/bblayers.conf

bitbake core-image-minimal

#bitbake core-image-sato
#bitbake core-image-sato-sdk
