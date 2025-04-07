# QEMU RISC-V UART

Demonstration of printing via UART in qemu riscv virt machine

## Requipments
* qemu-system-riscv
* riscv gnu toolchain 

> Toolchain must be built with `--enable-multilib` option for support different `-march/-mabi options`. Info: https://github.com/riscv-collab/riscv-gnu-toolchain?tab=readme-ov-file#installation-newliblinux-multilib

## Run

```sh
make -C ./qemu-bios-payload
./qemu_run_elf.sh
```

## GDB

```sh
./qemu_run_elf.sh -S -s     # from one shell session
./gdb_attach_disassebmle.sh # from another shell session
```
