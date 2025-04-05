#!/bin/bash

set -e

. ./artifacts.sh

qemu-system-riscv64 \
    -smp 4 \
    -machine virt \
    -m 1G \
    -nographic \
    -bios ${OPENSBI_BIN} \
    -kernel ${LINUX_BIN} \
    -append "root=/dev/vda1  console=ttyS0" \
    -device virtio-blk-device,drive=hd0 \
    -drive file=./build-output/ubuntu-24.04.img,if=none,format=raw,id=hd0 \
    -device virtio-net-device,netdev=net0 \
    -netdev user,id=net0,hostfwd=tcp::2345-:2345,hostfwd=tcp::2222-:22,hostfwd=tcp::5900-:5900 \
    -object rng-random,filename=/dev/urandom,id=rng0 \
    -device virtio-rng-device,rng=rng0 \
    -gdb tcp::1234 \
    -serial mon:stdio \
    $1
