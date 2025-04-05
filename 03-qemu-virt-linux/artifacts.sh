#/bin/bash 

set -e

OPENSBI_BIN = ../opensbi/build/platform/generic/firmware/fw_dynamic.bin
OPENSBI_ELF = ../opensbi/build/platform/generic/firmware/fw_dynamic.elf
LINUX_ELF = ../linux/vmlinux
LINUX_BIN = ../linux/arch/riscv/Image
BUILDROOT_INITRAMFS = ../buildroot/output/images/rootfs.cpio
BUILDROOT_ROOTFS = ../buildroot/output/images/rootfs.ext2


echo "LINUX_BIN: ${LINUX_BIN}"
echo "LINUX_ELF: ${LINUX_ELF}"
echo "OPENSBI_ELF: ${OPENSBI_ELF}"
echo "OPENSBI_BIN: ${OPENSBI_BIN}"
echo "BUILDROOT_ROOTFS: ${BUILDROOT_ROOTFS}"
echo "BUILDROOT_INITRAMFS: ${BUILDROOT_INITRAMFS}"

