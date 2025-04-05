#!/bin/bash 

set -e

PWD=`pwd`

# Linux
cd ../linux
make ARCH=riscv CROSS_COMPILE=riscv64-unknown-linux-gnu- defconfig
make ARCH=riscv CROSS_COMPILE=riscv64-unknown-linux-gnu- menuconfig # Add debug info in Kerel Hacking
make ARCH=riscv CROSS_COMPILE=riscv64-unknown-linux-gnu- -j$(nproc)
cd ${PWD}


