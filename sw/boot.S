.section .text
    .global _start

_start:
    // 1. Initialize the Stack Pointer (sp / x2)
    // We set it to 0x00108000 (32KB into your SRAM). 
    // The stack grows downwards, so this gives your C code plenty of room.
    li sp, 0x00108000

    // 2. Jump to the C main function
    jal ra, main

    // 3. Trap the processor when main() finishes and returns
end_loop:
    j end_loop
