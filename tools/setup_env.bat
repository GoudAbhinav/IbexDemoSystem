@echo off
:: Teammates must change this path to where they unzipped the Windows RISC-V toolchain
set RISCV_TOOLCHAIN_PATH=C:\Users\DELL\Downloads\xpack-riscv-none-elf-gcc-15.2.0-1-win32-x64\xpack-riscv-none-elf-gcc-15.2.0-1\bin

set PATH=%RISCV_TOOLCHAIN_PATH%;%PATH%

echo RISC-V Toolchain added to PATH for this session.
:: CHANGED: Use the correct xPack executable name
riscv-none-elf-gcc --version
