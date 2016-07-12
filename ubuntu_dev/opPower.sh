#!/bin/bash


pushd

sudo apt-get -y install gcc python g++ pkg-config libz-dev libglib2.0-dev \
  libpixman-1-dev libfdt-dev git

git clone https://github.com/ozbenh/qemu.git
cd qemu
./configure --target-list=ppc64-softmmu
make -j `grep -c processor /proc/cpuinfo`

popd

git clone --recursive https://github.com/open-power/op-build.git
sudo apt-get install software-properties-common
sudo add-apt-repository universe
 sudo apt-get install cscope ctags libz-dev libexpat-dev \
          python language-pack-en texinfo \
          build-essential g++ git bison flex unzip \
          libxml-simple-perl libxml-sax-perl libxml2-dev libxml2-utils xsltproc \
          wget bc

cd op-build
. op-build-env
op-build palmetto_defconfig && op-build

cd output/images
 ../../../qemu/ppc64-softmmu/qemu-system-ppc64 -m 1G -M powernv -kernel zImage.epapr -nographic

