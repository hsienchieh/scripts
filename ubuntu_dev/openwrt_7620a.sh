#!/bin/bash 

#  build 7620A openWRT  


mkdir openwrt
cd openwrt/
git clone https://github.com/openwrt/openwrt.git
cd openwrt/
./scripts/feeds update -a
./scripts/feeds install -a
make defconfig
make prereq
make menuconfig
make -j8 V=s
