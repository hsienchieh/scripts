#!/bin/bash

git clone git://git.buildroot.net/buildroot br_rpi2

cd br_rpi2

make raspberrypi2_defconfig

make

