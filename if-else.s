# Program if else
# Date: Tue Dec 26 16:41:21 JST 2023

.global _start

.section .data
    ok: .asciz "You can drink\n"
    no: .asciz "You can't drink\n"

.section .text
_start:
    mov x9, 18 // Minimum age to drink
    mov x10, 16 // User age
    
compare:
    cmp x10, x9 // Compare x10 is lower then x9
    blt not_allow // Go If lower than x9
    b allow // Else go allow

allow:
    mov x8, 0x40
    mov x0, 1
    ldr x1, =ok
    mov x2, 15
    mov x8, 0x40
    svc 0
    b exit

not_allow:
    mov x8, 0x40
    mov x0, 1
    ldr x1, =no
    mov x2, 17
    mov x8, 0x40
    svc 0
    b exit
    
exit:
    mov x8, 0x5d
    mov x0, 0
    svc 0
    