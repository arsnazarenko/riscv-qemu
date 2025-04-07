#!/bin/bash 

set -e

BUILDROOT=`pwd`/buildroot

if [ ! -z ${BUILDROOT_OUT} ]; then
    mkdir -p ${BUILDROOT_OUT}
    BUILDROOT_OUT=$(realpath ${BUILDROOT_OUT})
else
    BUILDROOT_OUT=${BUILDROOT}
fi

echo "BUILDROOT_OUT: ${BUILDROOT_OUT}"

#3 buildroot
make -C ${BUILDROOT} O=${BUILDROOT_OUT} qemu_riscv64_virt_defconfig
make -C ${BUILDROOT} O=${BUILDROOT_OUT} menuconfig # unset Kernel and bootloader options
make -C ${BUILDROOT} O=${BUILDROOT_OUT} -j$(nproc)
