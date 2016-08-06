#!/bin/bash 


mkdir bb_c2
cd bb_c2
git clone git://git.openembedded.org/bitbake
git clone git://git.openembedded.org/openembedded-core
git clone git://git.openembedded.org/meta-openembedded
git clone https://github.com/akuster/meta-odroid.git
mv bitbake openembedded-core

source openembedded-core/oe-init-build-env


#MACHINE = "odroid-c2"
echo "MACHINE = \"odroid-c2\"" >> conf/local.conf


#BBLAYERS ?= " \
#  /home/coreboot/bb_c2/openembedded-core/meta \
#  /home/coreboot/bb_c2/meta-openembedded/meta-oe \
#  /home/coreboot/bb_c2/meta-openembedded/meta-python \
#  /home/coreboot/bb_c2/meta-openembedded/meta-networking \
#  /home/coreboot/bb_c2/meta-openembedded/meta-xfce \
#  /home/coreboot/bb_c2/meta-openembedded/meta-gnome \
#  /home/coreboot/bb_c2/meta-odroid \
#  "


echo "BBLAYERS += \"$HOME/bb_c2/meta-openembedded/meta-oe\"" >> conf/bblayers.conf
echo "BBLAYERS += \"$HOME/bb_c2/meta-openembedded/meta-python\"" >> conf/bblayers.conf
echo "BBLAYERS += \"$HOME/bb_c2/meta-openembedded/meta-networking\"" >> conf/bblayers.conf
echo "BBLAYERS += \"$HOME/bb_c2/meta-openembedded/meta-xfce\"" >> conf/bblayers.conf
echo "BBLAYERS += \"$HOME/bb_c2/meta-openembedded/meta-gnome\"" >> conf/bblayers.conf
echo "BBLAYERS += \"$HOME/bb_c2/meta-odroid\"" >> conf/bblayers.conf



bitbake core-image-minimal-xfce





