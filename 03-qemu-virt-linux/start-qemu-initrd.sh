#!/bin/bash

set -e

. ./artifacts.sh

qemu-system-riscv64 \
    -smp 4 \
    -machine virt \
    -m 256m \
    -nographic \
    -bios ${OPENSBI_BIN} \
    -kernel ${LINUX_BIN} \
    -initrd ${BUILDROOT_INITRAMFS} \
    -append "console=ttyS0 earlycon root=/dev/ram0 rw init=/init" \
    -device virtio-net-device,netdev=net \
    -netdev user,id=net,hostfwd=tcp::2345-:2345,hostfwd=tcp::2222-:22 \
    -gdb tcp::1234 \
    -serial mon:stdio \
    $1
