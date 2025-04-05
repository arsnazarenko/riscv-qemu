#!/bin/bash

qemu-system-riscv64 -machine virt -bios ./qemu-bios-payload/build/hello --nographic -serial mon:stdio $1

