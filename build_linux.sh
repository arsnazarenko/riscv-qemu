#!/bin/bash 

set -e

LINUX=`pwd`/linux

if [ ! -z ${LINUX_OUT} ]; then
    mkdir -p ${LINUX_OUT} 
    LINUX_OUT=$(realpath ${LINUX_OUT})
else
    LINUX_OUT=${LINUX}
fi

echo "LINUX_OUT: ${LINUX_OUT}"

make -C ${LINUX} O=${LINUX_OUT} ARCH=riscv CROSS_COMPILE=riscv64-unknown-linux-gnu- defconfig
make -C ${LINUX} O=${LINUX_OUT} ARCH=riscv CROSS_COMPILE=riscv64-unknown-linux-gnu- menuconfig # Add debug info in Kerel Hacking
make -C ${LINUX} O=${LINUX_OUT} ARCH=riscv CROSS_COMPILE=riscv64-unknown-linux-gnu- -j$(nproc)
