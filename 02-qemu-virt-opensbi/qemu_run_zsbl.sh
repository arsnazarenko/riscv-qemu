#!/bin/bash

qemu-system-riscv64 -machine virt -nographic -serial mon:stdio $1
