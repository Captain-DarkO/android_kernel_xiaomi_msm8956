#!/bin/sh

# Setup Environment
. ./env.sh
# prepare DTB

./buildtools/dtbTool -2 -o ./arch/arm64/boot/dt.img -s 2048 -p ./scripts/dtc/ ./arch/arm/boot/dts/
cp ./arch/arm/boot/dts/*.dtb* ./arch/arm64/boot/dts/

# Build
make clean
sh ./cleanup.sh
make lineageos_kenzo_defconfig
make -j8

# prepare Boot.img
mv ./arch/arm64/boot/Image.gz-dtb ./buildtools/out/kernel
./buildtools/mkboot ./buildtools/out ./build/boot.img
