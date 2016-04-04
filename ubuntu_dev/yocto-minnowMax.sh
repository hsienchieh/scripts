mkdir yocto_nm
cd yocto_nm
git clone -b dizzy git://git.yoctoproject.org/poky
cd poky
git clone -b dizzy git://git.yoctoproject.org/meta-intel
source oe-init-build-env

echo "BBLAYERS += \"$HOME/yocto_nm/poky/meta-intel\"" >> conf/bblayers.conf

# 64bit

echo "MACHINE = \"intel-corei7-64\"" >> conf/local.conf

#echo "MACHINE = \"intel-core2-32\"" >> conf/local.conf

bitbake core-image-minimal

# $ sudo $HOME/source/poky/scripts/contrib/mkefidisk.sh HOST_DEVICE tmp/deploy/images/intel-corei7-64/core-image-minimal-intel-corei7-64.hddimg TARGET_DEVICE

#bitbake core-image-sato
#bitbake core-image-sato-sdk

