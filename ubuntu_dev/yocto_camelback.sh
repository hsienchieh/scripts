#!/bin/bash

mkdir ~/camelback 
cd  ~/camelback
git clone -b jethro  git://git.yoctoproject.org/poky.git
cd poky 
wget http://downloads.yoctoproject.org/releases/yocto/yocto-2.0/machines/intel-corei7-64/intel-corei7-64-4.0-jethro-2.0.tar.bz2?bsp=camelback_mountain_broadwellde
mv intel-corei7-64-4.0-jethro-2.0.tar.bz2\?bsp\=camelback_mountain_broadwellde  intel-corei7-64-4.0-jethro-2.0.tar.bz2
tar xvjf intel-corei7-64-4.0-jethro-2.0.tar.bz2

mv intel-corei7-64-4.0-jethro-2.0 meta-intel


source oe-init-build-env

echo "MACHINE = \"intel-corei7-64\"" >> conf/local.conf 

echo "BBLAYERS += \"$HOME/camelback/poky/meta-intel\"" >> conf/bblayers.conf 
 
bitbake core-image-sato
