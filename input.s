# Program to get user input

.global _start
.section .data
    // Template text
    text_prompt: .asciz "Input your name: "
    text_username: .asciz "Your name is "
    
    // Result input
    result_input: .space 64
    
.section .text
_start:
    ldr x1, =text_prompt
    mov x2, 17
    bl print
    
    ldr x1, =result_input
    mov x2, 64
    bl input
    
    ldr x1, =text_username
    mov x2, 14
    bl print
    
    ldr x1, =result_input
    mov x2, 64
    bl print
    
    b exit
    
print:
    mov x8, 0x40
    mov x0, 1
    svc 0
    ret
    
input:
    mov x8, 0x3f
    mov x0, 0
    svc 0
    ret
    
exit:
    mov x8, 0x5d
    mov x0, 0
    svc 0
    