#!/bin/bash

mkdir ~/bb_grantley 
cd  ~/bb_grantley
git clone -b jethro  git://git.yoctoproject.org/poky.git
git clone git://git.yoctoproject.org/meta-intel -b jethro 

source poky/oe-init-build-env

#BBLAYERS ?= " \
#  /home/ilab/grantley/poky/meta \
#  /home/ilab/grantley/poky/meta-yocto \
#  /home/ilab/grantley/poky/meta-yocto-bsp \
#  /home/ilab/grantley/poky/meta-intel \
#  /home/ilab/grantley/poky/meta-intel/meta-isg \
#  /home/ilab/grantley/poky/meta-intel/meta-tlk \
#  "
#BBLAYERS_NON_REMOVABLE ?= " \
#  /home/ilab/grantley/poky/meta \
#  /home/ilab/grantley/poky/meta-yocto \


echo "MACHINE = \"intel-corei7-64\"" >> conf/local.conf 

echo "BBLAYERS += \"$HOME/bb_grantley/meta-intel\"" >> conf/bblayers.conf 
echo "BBLAYERS += \"$HOME/bb_grantley/meta-intel/meta-isg\"" >> conf/bblayers.conf 
echo "BBLAYERS += \"$HOME/bb_grantley/meta-intel/meta-tlk\"" >> conf/bblayers.conf 
 
bitbake core-image-sato
