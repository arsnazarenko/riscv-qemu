#!/bin/bash 

set -e

PWD=`pwd`

# Buildroot
cd ../buildroot
make qemu_riscv64_virt_defconfig
make menuconfig # unset Kernel and bootloader options
make -j$(nproc)
cd ${PWD}



