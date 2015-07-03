#!/bin/bash

# check https://tthtlc.wordpress.com/2015/03/10/minnowmax-bootup-using-buildroot/
git clone git://git.buildroot.net/buildroot br_minnowMax

cd br_minnowMax
make minnowboard_max_defconfig
make


# prepare SD card


# sudo cgdisk /dev/mmcblk0

# create 2 partition

# efi / root

#sudo mkfs.vfat -F 32 -n boot /dev/mmcblk0p1
#sudo mount /dev/mmcblk0p1 /mnt
#sudo cp -a output/image/efi-part/* /mnt/
#sudo cp output/images/bzImage /mnt/
#sudo umount /mnt

# root partition

#sudo mkfs.ext4 -L root /dev/mmcblk0p2
#sudo mount /dev/mmcblk0p2 /mnt
#sudo tar -C /mnt xf output/images/rootfs.tar
#sudo umount /mnt
#




