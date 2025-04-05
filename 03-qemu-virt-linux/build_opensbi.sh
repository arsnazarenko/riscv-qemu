#!/bin/bash

set -e

# BUILD OpenSBI
cd ../opensbi
make CROSS_COMPILE=riscv64-unknown-linux-gnu- PLATFORM=generic FW_OPTIONS=0x2 BUILD_INFO=y -j$(nproc)
cd ${PWD}


