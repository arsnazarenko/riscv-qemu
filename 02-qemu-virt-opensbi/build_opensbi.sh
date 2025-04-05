#!/bin/bash

set -e
PWD=`pwd`

# BUILD OpenSBI
cd ../opensbi
make CROSS_COMPILE=riscv64-unknown-linux-gnu- PLATFORM=generic FW_OPTIONS=0x2 BUILD_INFO=y -j$(nproc)
cd ${PWD}

OPENSBI_BIN = ../opensbi/build/platform/generic/firmware/fw_dynamic.bin
OPENSBI_ELF = ../opensbi/build/platform/generic/firmware/fw_dynamic.elf

echo ${OPENSBI_BIN}
echo ${OPENSBI_ELF}
