#!/bin/bash
pushd .
TOOL_PATH=`pwd`

cd arm-trusted-firmware

export CROSS_COMPILE=$TOOL_PATH/gcc-linaro-4.9-2016.02-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-

make PLAT=qemu all

