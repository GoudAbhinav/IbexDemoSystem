.section .text
    .global _start

_start:
    li x5, 1        

    j target_label  
    
    li x5, 2        

target_label:
    li x5, 3        

end_loop:
    j end_loop
