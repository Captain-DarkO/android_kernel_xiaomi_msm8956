#!/bin/sh
. ./env.sh
make clean && make mrproper
echo "removing generated files"
rm -rf ./arch/arm64/boot/dts/kenzo-msm8956-mtp.dtb
rm -rf ./arch/arm64/boot/dt.img
rm -rf ./buildtools/out/kernel
rm -rf ./buildtools/build/boot.img
echo "cleaned up"
