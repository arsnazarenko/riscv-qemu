#!/bin/bash 

set -e

OPENSBI=`pwd`/opensbi

if [ ! -z ${OPENSBI_OUT} ]; then
    mkdir -p ${OPENSBI_OUT}
    OPENSBI_OUT=$(realpath ${OPENSBI_OUT})
else
    OPENSBI_OUT=${OPENSBI}
fi

echo "OPENSBI_OUT: ${OPENSBI_OUT}"

make -C ${OPENSBI} O=${OPENSBI_OUT} CROSS_COMPILE=riscv64-unknown-linux-gnu- PLATFORM=generic FW_OPTIONS=0x2 BUILD_INFO=y -j$(nproc)

