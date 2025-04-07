#!/bin/bash

set -e

OPENSBI_BIN = ../build/platform/generic/firmware/fw_dynamic.bin
OPENSBI_ELF = ../opensbi/build/platform/generic/firmware/fw_dynamic.elf
LINUX_ELF = ../linux/vmlinux
LINUX_BIN = ../linux/arch/riscv/image
UBUNTU_ROOTFS_IMG = ./ubuntu22.04.img

qemu-system-riscv64 \
    -smp 4 \
    -machine virt \
    -m 1G \
    -nographic \
    -bios ${OPENSBI_BIN} \
    -kernel ${LINUX_BIN} \
    -append "root=/dev/vda1  console=ttyS0" \
    -device virtio-blk-device,drive=hd0 \
    -drive file=${UBUNTU_ROOTFS_IMG},if=none,format=raw,id=hd0 \
    -device virtio-net-device,netdev=net0 \
    -netdev user,id=net0,hostfwd=tcp::2345-:2345,hostfwd=tcp::2222-:22,hostfwd=tcp::5900-:5900 \
    -object rng-random,filename=/dev/urandom,id=rng0 \
    -device virtio-rng-device,rng=rng0 \
    -gdb tcp::1234 \
    -serial mon:stdio \
    $1
