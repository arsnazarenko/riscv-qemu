# Linux + OpenSBI + Busybox rootfs on QEMU riscv64 virt machine


```sh
./qemu_run_linux_initrd.sh

# or 

./fetch_ubuntu_img.sh
./qemu_run_linux_ubuntu.sh
```


# Kernel debug
```sh 
./qemu_run_<name>.sh -S -s
./gdb_attach_kernel.sh # TODO: add script

```

# Debug userspace application from qemu linux
```sh 
./qemu_run_<name>.sh -S -s
./gdb_attach_userspace.sh # TODO: add script

```
