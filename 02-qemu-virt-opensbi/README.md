# OpenSBI in qemu-riscv64 virt machine


```sh

# 1
./qemu_run_zsbl.sh

# 2
./build_opensbi.sh
./qemu_run_opensbi_dynamic.sh

# 3
./build_opensbi.sh
cd ./qemu-kernel-payload && make payload  && ../
./qemu_run_opensbi_and_kernel.sh

```

> For debbuging run: `./<script-name> -S -s` and connect with `./gdb-connect.sh`
