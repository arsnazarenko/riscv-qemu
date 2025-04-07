#!/bin/bash

set -e

OPENSBI_BIN = ../build/platform/generic/firmware/fw_dynamic.bin
OPENSBI_ELF = ../opensbi/build/platform/generic/firmware/fw_dynamic.elf
LINUX_ELF = ../linux/vmlinux
LINUX_BIN = ../linux/arch/riscv/image
INITRAMFS = ../buildroot/output/images/rootfs.cpio
ROOTFS = ../buildroot/output/images/rootfs.ext2

qemu-system-riscv64 \
    -smp 4 \
    -machine virt \
    -m 256m \
    -nographic \
    -bios ${OPENSBI_BIN} \
    -kernel ${LINUX_BIN} \
    -initrd ${INITRAMFS} \
    -append "console=ttyS0 earlycon root=/dev/ram0 rw init=/init" \
    -device virtio-net-device,netdev=net \
    -netdev user,id=net,hostfwd=tcp::2345-:2345,hostfwd=tcp::2222-:22 \
    -gdb tcp::1234 \
    -serial mon:stdio \
    $1
