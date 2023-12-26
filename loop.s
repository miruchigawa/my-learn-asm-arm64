.global _start
.section .data
    message: .asciz "Hai!\n"

.section .text
_start:
    mov x6, 10 // The loop count
    
loop:
    // Loop program
    cmp x6, #0 // Compare x6 equal 0 if true will end loop
    ble exit
    
    // Print Message into stdout
    mov x8, #0x40
    mov x0, #1
    ldr x1, =message
    mov x2, #6
    mov x8, #0x40
    svc 0
    
    sub x6, x6, #1
    b loop

exit:
    // Exit program
    mov x8, #0x5d
    mov x0, #0
    svc 0
    