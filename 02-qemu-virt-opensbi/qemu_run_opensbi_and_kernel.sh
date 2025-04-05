#!/bin/bash

qemu-system-riscv64 -machine virt -bios ../opensbi/build/platform/generic/firmware/fw_dynamic.bin -kernel ./qemu-kernel-payload/build/infinite_loop -nographic -serial mon:stdio $1

