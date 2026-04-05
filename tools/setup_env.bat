@echo off
:: Teammates must change this path to where they unzipped the Windows RISC-V toolchain
set RISCV_TOOLCHAIN_PATH=C:\path\to\riscv-none-elf-gcc\bin

set PATH=%RISCV_TOOLCHAIN_PATH%;%PATH%

echo RISC-V Toolchain added to PATH for this session.
riscv64-unknown-elf-gcc --version
