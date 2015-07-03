#!/bin/bash

sudo apt-get install gawk wget git-core diffstat unzip texinfo gcc-multilib \
     build-essential chrpath socat


# Graphical and Eclipse Plug-in 
#sudo apt-get install libsdl1.2-dev xterm

# Documentation 

#sudo apt-get install make xsltproc docbook-utils fop dblatex xmlto

# ADT Installer extra : Application development Toolkit 
# sudo apt-get install autoconf automake libtool libglib2.0-dev

# Check git > 1.7.8
# check tar > 1.24
# check python > 2.73 , python 3 unsupported
 
# prebuild toolchain

#wget http://downloads.yoctoproject.org/releases/yocto/yocto-1.8/buildtools/
#wget http://downloads.yoctoproject.org/releases/yocto/yocto-1.8/toolchain/i686/poky-glibc-i686-core-image-sato-i586-toolchain-1.8.sh
# source /home/your_username/buildtools/environment-setup-i586-poky-linux

#bitbake buildtools-tarball



# clone poky
git clone http://git.yoctoproject.org/git/poky

cd poky

git checkout -b fido origin/fido
source oe-init-build-evn

#build
# build/conf/local.conf 

#build an OS image for the target, which core-image-sato

bitbake -k core-image-sato

#runqemu qemux86

