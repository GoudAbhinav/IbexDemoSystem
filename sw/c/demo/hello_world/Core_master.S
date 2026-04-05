.section .text
    .global _start

_start:
    // ==========================================
    // 1. UPPER IMMEDIATES 
    // ==========================================
    // lui: Load Upper Immediate (loads into bits 31:12) [cite: 5, 55]
    lui x5, 0x12345       // x5 = 0x12345000
    
    // auipc: Add Upper Immediate to PC [cite: 5, 56]
    // Assuming this instruction sits at 0x00000004, x6 becomes 0x00002004
    auipc x6, 2           

    // ==========================================
    // 2. MEMORY ACCESS (LOADS & STORES) 
    // ==========================================
    // We will use 0x00000100 as a safe RAM address to avoid overwriting code.
    li x10, 0x00102000    // Base memory address pointer
    li x11, 0xAABBCCDD    // Test data pattern

    // Store operations [cite: 5, 26-34]
    sw x11, 0(x10)        // Store Word: Writes 0xAABBCCDD at 0x00000100
    sh x11, 4(x10)        // Store Halfword: Writes 0xCCDD at 0x00000104
    sb x11, 8(x10)        // Store Byte: Writes 0xDD at 0x00000108

    // Load operations [cite: 5, 14-23]
    lw x12, 0(x10)        // Load Word: x12 = 0xAABBCCDD
    lh x13, 4(x10)        // Load Halfword (Sign-extended): x13 = 0xFFFFCCDD (because MSB of C is 1)
    lhu x14, 4(x10)       // Load Halfword Unsigned: x14 = 0x0000CCDD
    lb x15, 8(x10)        // Load Byte (Sign-extended): x15 = 0xFFFFFFDD
    lbu x16, 8(x10)       // Load Byte Unsigned: x16 = 0x000000DD

    // ==========================================
    // 3. CONTROL FLOW (BRANCHES & JALR) 
    // ==========================================
    li x20, 5
    li x21, 10

    // BEQ / BNE [cite: 35-40]
    beq x20, x21, fail_trap // 5 != 10, so it WILL NOT branch [cite: 35-37]
    bne x20, x21, branch_1  // 5 != 10, so it WILL branch [cite: 38-40]

fail_trap:
    // If a branch predicts incorrectly, it gets stuck here forever
    j fail_trap

branch_1:
    // BLT / BGE [cite: 41-46]
    bge x20, x21, fail_trap // 5 is not >= 10, WILL NOT branch [cite: 44-46]
    blt x20, x21, branch_2  // 5 < 10, WILL branch [cite: 41-43]

branch_2:
    // BLTU / BGEU (Unsigned comparisons) [cite: 47-52]
    li x22, -1              // -1 in two's complement is 0xFFFFFFFF
    bgeu x20, x22, fail_trap // 5 is not >= 0xFFFFFFFF unsigned, WILL NOT branch [cite: 50-52]
    bltu x20, x22, branch_3 // 5 < 0xFFFFFFFF unsigned, WILL branch [cite: 47-49]

branch_3:
    // JALR: Jump and Link Register [cite: 5, 53]
    la x25, pass_target     // Load the physical address of the pass_target label into x25
    jalr x26, 0(x25)        // Jump to address in x25, store return address (PC+4) in x26 [cite: 5, 53]

pass_target:
    // If we reach here, every single RV32I instruction has passed!
end_loop:
    j end_loop
