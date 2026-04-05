@echo off
set CC=riscv64-unknown-elf-gcc
set OBJCOPY=riscv64-unknown-elf-objcopy

:: Create the output directory if it doesn't exist
if not exist "output" mkdir "output"

echo Compiling C code...
%CC% -O0 -march=rv32i -mabi=ilp32 -nostartfiles -nostdlib -Ttext=0x00100000 -o output\standard_c.elf boot.S main.c

if %errorlevel% neq 0 (
    echo Compilation failed!
    exit /b %errorlevel%
)

echo Generating Verilog memory file...
%OBJCOPY% -O verilog --verilog-data-width=4 --change-addresses -0x00100000 output\standard_c.elf output\standard_c.vmem

echo Build Complete! Check the sw\output folder.
