#!/bin/bash

sudo apt-get update
sudo apt-get install git-core build-essential libssl-dev libncurses5-dev unzip gawk subversion mercurial
sudo apt-get install build-essential subversion libncurses5-dev zlib1g-dev gawk gcc-multilib flex git-core gettext libssl-dev

git clone git://git.openwrt.org/15.05/openwrt.git
cd openwrt
./scripts/feeds update -a
./scripts/feeds install -a
make menuconfig 
make defconfig
make prereq
make V=99 -j 8
