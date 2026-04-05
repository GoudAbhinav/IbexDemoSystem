# Toolchain definitions
CC = riscv64-unknown-elf-gcc
OBJCOPY = riscv64-unknown-elf-objcopy

# Compilation flags
CFLAGS = -O0 -march=rv32i -mabi=ilp32 -nostartfiles -nostdlib
LDFLAGS = -Ttext=0x00100000
OBJCOPY_FLAGS = -O verilog --verilog-data-width=4 --change-addresses -0x00100000

# Targets
all: output/standard_c.vmem

output/standard_c.elf: boot.S main.c
	@mkdir -p output
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

output/standard_c.vmem: output/standard_c.elf
	$(OBJCOPY) $(OBJCOPY_FLAGS) $< $@

clean:
	rm -rf output/
