#!/bin/sh

# Setup Environment
export ARCH=arm64
export SUBARCH=arm64
export CROSS_COMPILE=~/android/toolchains/gcc-linaro-4.9/bin/aarch64-linux-gnu-

export KBUILD_BUILD_HOST="DevX"
export KBUILD_BUILD_USER="NuKe"

#prepare DTB
./dtbTool -2 -o ./arch/arm64/boot/dt.img -s 2048 -p ./scripts/dtc/ ./arch/arm/boot/dts/
cp ./arch/arm/boot/dts/*.dtb* ./arch/arm64/boot/dts/

# Build
make lineageos_kenzo_defconfig
make -j8

# prepare Boot.img
mv ./arch/arm64/boot/Image.gz-dtb ./build/kernel

