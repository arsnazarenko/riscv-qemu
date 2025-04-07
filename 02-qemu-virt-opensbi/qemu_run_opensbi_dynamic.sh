#!/bin/bash

OPENSBI_BIN=${OPENSBI_BIN:-../build/platform/generic/firmware/fw_dynamic.bin}

qemu-system-riscv64 -machine virt  -bios ${OPENSBI_BIN} --nographic -serial mon:stdio $1

