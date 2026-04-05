.section .text
    .global _start

_start:
    // --- Setup & Initialization ---
    // We will use x10 and x11 as our base operands for the tests.
    // Remember that x0 is hard-wired to zero, so we cannot use it to store data[cite: 7].
    li x10, 15        // Operand 1: Load 15 (0xF) into x10
    li x11, 3         // Operand 2: Load 3 (0x3) into x11

    // --- R-Type Arithmetic  ---
    add  x5, x10, x11 // x5  = 15 + 3  = 18
    sub  x6, x10, x11 // x6  = 15 - 3  = 12
    and  x7, x10, x11 // x7  = 15 & 3  = 3
    or   x8, x10, x11 // x8  = 15 | 3  = 15
    xor  x9, x10, x11 // x9  = 15 ^ 3  = 12
    sll  x12, x10, x11 // x12 = 15 << 3 (Shift Left Logical)
    srl  x13, x10, x11 // x13 = 15 >> 3 (Shift Right Logical)
    sra  x14, x10, x11 // x14 = 15 >> 3 (Shift Right Arithmetic)
    slt  x15, x10, x11 // x15 = 15 < 3 ? 1 : 0 (Set Less Than)
    sltu x16, x10, x11 // x16 = 15 < 3 ? 1 : 0 (Set Less Than Unsigned)

    // --- I-Type Arithmetic  ---
    addi  x17, x10, 5  // x17 = 15 + 5 = 20
    andi  x18, x10, 7  // x18 = 15 & 7 = 7
    ori   x19, x10, 16 // x19 = 15 | 16 = 31
    xori  x20, x10, 4  // x20 = 15 ^ 4 = 11
    slli  x21, x10, 2  // x21 = 15 << 2 (Shift Left Logical Immediate)
    srli  x22, x10, 1  // x22 = 15 >> 1 (Shift Right Logical Immediate)
    srai  x23, x10, 1  // x23 = 15 >> 1 (Shift Right Arithmetic Immediate)
    slti  x24, x11, 10 // x24 = 3 < 10 ? 1 : 0 (Set Less Than Immediate)
    sltiu x25, x11, 10 // x25 = 3 < 10 ? 1 : 0 (Set Less Than Unsigned Imm)

end_loop:
    // Trap the processor here when the tests are done
    j end_loop
