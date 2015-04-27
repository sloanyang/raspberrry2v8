#!/bin/bash

export KBUILD_VERBOSE=1
#export KBUILD_OUTPUT=obj 
export KBUILD_CHECKSRC=1
make ARCH=arm CROSS_COMPILE=arm-bcm2708-linux-gnueabi- bcmrpi_defconfig
#make ARCH=arm CROSS_COMPILE=arm-bcm2708-linux-gnueabi- clean
make -d ARCH=arm CROSS_COMPILE=arm-bcm2708-linux-gnueabi-
