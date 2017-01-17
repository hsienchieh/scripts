#!/bin/bash

git clone --depth 1 git://git.yoctoproject.org/poky -b jethro poky

git clone https://github.com/superna9999/meta-meson.git meta-meson

source poky/oe-init-build-env
bitbake-layers add-layer $PWD/../meta-meson/
export MACHINE=amlogic-s905
bitbake amlogic-image-sd

