# OpenSBI in qemu-riscv64 virt machine


```sh

# 1
./qemu_run_zsbl.sh

# 2
./qemu_run_opensbi_dynamic.sh

# 3
make -C ./qemu-kernel-payload
./qemu_run_opensbi_and_kernel.sh

```

## GDB 
./qemu_run_<script_name> -S -s # from one shell session
./gdb_attach_disassebmle.sh    # from another shell session

