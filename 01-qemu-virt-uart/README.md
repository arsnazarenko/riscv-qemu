# QEMU RISC-V UART

Demonstration of printing via UART in qemu riscv virt machine

## Requipments
* qemu-system-riscv
* riscv gnu toolchain 

> Toolchain must be built with `--enable-multilib` option for support different `-march/-mabi options`. Info: https://github.com/riscv-collab/riscv-gnu-toolchain?tab=readme-ov-file#installation-newliblinux-multilib

## Run

```sh
cd ./qemu-bios-payload 
make 
cd ../

./qemu_run_elf.sh
```


> For debbuging run: ./qemu_<script-name> -S -s and connect with ./gdb-connect.ss
