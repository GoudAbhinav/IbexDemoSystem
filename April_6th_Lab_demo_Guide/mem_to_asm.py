import argparse
import struct
import sys

try:
    from capstone import Cs, CS_ARCH_RISCV, CS_MODE_RISCV32
except ImportError:
    print("Error: The 'capstone' library is required.")
    print("Please install it using: pip install capstone")
    sys.exit(1)

def convert_vmem_to_asm(input_file, output_file):
    # Initialize Capstone disassembler for 32-bit RISC-V
    md = Cs(CS_ARCH_RISCV, CS_MODE_RISCV32)
    
    with open(input_file, 'r') as f_in, open(output_file, 'w') as f_out:
        f_out.write("; Auto-generated RISC-V Assembly from VMEM\n")
        f_out.write("; Note: Original .vmem addresses are assumed to be word-indices.\n\n")
        
        current_byte_address = 0
        
        for line in f_in:
            # Strip whitespace and ignore empty lines
            line = line.strip()
            if not line:
                continue
                
            # Handle address directives (e.g., @00000020)
            if line.startswith('@'):
                # Extract the hex address
                word_addr_str = line[1:]
                word_address = int(word_addr_str, 16)
                
                # Convert word address to byte address (multiply by 4)
                current_byte_address = word_address * 4
                
                f_out.write(f"\n; --- Address @{word_addr_str} (Byte Address: 0x{current_byte_address:08X}) ---\n")
                continue
                
            # Handle machine code / data words
            words = line.split()
            for hex_word in words:
                try:
                    # Convert the 32-bit hex string to an integer
                    word_val = int(hex_word, 16)
                    
                    # Pack into 4 bytes using Little-Endian format (standard for RISC-V)
                    word_bytes = struct.pack("<I", word_val)
                    
                    # Attempt to disassemble the byte sequence
                    instructions = list(md.disasm(word_bytes, current_byte_address))
                    
                    if instructions:
                        for instr in instructions:
                            # Format: Address    Mnemonic    Operands    # Raw Hex
                            f_out.write(f"0x{instr.address:08X}:\t{instr.mnemonic:<8}\t{instr.op_str:<20}\t# {hex_word}\n")
                    else:
                        # If Capstone cannot interpret it as an instruction, it's likely data
                        f_out.write(f"0x{current_byte_address:08X}:\t.word   \t0x{hex_word:<20}\t# DATA\n")
                
                except ValueError:
                    print(f"Warning: Skipping invalid hex word '{hex_word}'")
                
                # Increment the byte address by 4 for the next 32-bit word
                current_byte_address += 4

    print(f"Success! Converted assembly written to: {output_file}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Convert RISC-V .vmem file to Assembly .asm")
    parser.add_argument("input", help="Path to the input .vmem file")
    parser.add_argument("output", help="Path to the output .asm file")
    
    args = parser.parse_args()
    convert_vmem_to_asm(args.input, args.output)