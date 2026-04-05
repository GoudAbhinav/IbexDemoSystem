#!/bin/bash
# Run this using: source tools/setup_env.sh

# Change this path to wherever the toolchain is located on the lab machines
export RISCV_TOOLCHAIN_PATH="/opt/riscv/bin" 
export PATH=$RISCV_TOOLCHAIN_PATH:$PATH

echo "RISC-V Toolchain added to PATH."
riscv64-unknown-elf-gcc --version
