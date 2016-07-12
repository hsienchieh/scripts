#!/bin/bash

git clone -b fido https://git.yoctoproject.org/git/poky

cd poky
git clone -b fido https://github.com/openembedded/meta-openembedded.git
git clone https://github.com/facebook/openbmc.git meta-openbmc

export TEMPLATECONF=meta-openbmc/meta-facebook/meta-wedge/conf
source oe-init-build-env
bitbake wedge-image




