#!/bin/sh
. ./env.sh
make clean && make mrproper
echo "removing generated files"
rm -rf ./arch/arm64/boot/dts/kenzo-msm8956-mtp.dtb
rm -rf ./buildtools/out/kernel
rm -rf ./build/boot.img
echo "cleaned up"
