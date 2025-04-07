#!/bin/bash

OPENSBI_BIN=../build/platform/generic/firmware/fw_dynamic.bin

qemu-system-riscv64 -machine virt -bios ${OPENSBI_BIN} -kernel ./qemu-kernel-payload/build/infinite_loop -nographic -serial mon:stdio $1


