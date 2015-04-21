#!/bin/bash

export KBUILD_VERBOSE=1
export KBUILD_OUTPUT=obj 
make ARCH=arm CROSS_COMPILE=arm-bcm2708-linux-gnueabi-
