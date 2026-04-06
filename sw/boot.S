.section .text.init   // Often better than .text so the linker can put it exactly at the reset address
.global _start

_start:
    // 1. Initialize the Global Pointer (gp / x3)
    // This is CRITICAL for your C code to access global variables without crashing.
    // The .option directives prevent the assembler from optimizing this 'la' instruction
    // before the gp is actually set up.
    .option push
    .option norelax
    la gp, __global_pointer$
    .option pop

    // 2. Initialize the Stack Pointer (sp / x2)
    // We set it to 0x00108000. 
    // The stack grows downwards, giving your C code plenty of room.
    li sp, 0x00108000

    // 3. Jump to the C main function
    // 'call' is a standard pseudo-instruction that safely handles longer jumps 
    // better than a bare 'jal'.
    call main

    // 4. Trap the processor when main() finishes and returns
end_loop:
    j end_loop
