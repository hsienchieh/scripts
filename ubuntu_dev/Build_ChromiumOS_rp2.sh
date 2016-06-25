#!/bin/bash

mkdir rp2ChromiumOS
cd rp2ChromiumOS
repo init -u https://chromium.googlesource.com/chromiumos/manifest.git -b release-R49-7834.B
repo sync


./setup_board --board=raspberrypi2

./build_packages --board=raspberrypi2 --withdev --nowithdebug --nowithtest --nowithautotest


./build_image dev --board=raspberrypi2 --noenable_rootfs_verification

#cros_sdk --delete
