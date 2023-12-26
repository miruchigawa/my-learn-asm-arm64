# Program print "Hello, World!"
# Date: Tue Dec 26 15:01:56 JST 2023

# 0 = STDIN
# 1 = STDOUT
# 2 = STDERR

#  Syscall Exit ARM 64
#   -   x8  = 0x5d
#   -   x0  = Int error code

# Syscall Write ARM 64
#   -   x8  = 0x40
#   -   x0  = unsigned int fd
#   -   x1  = buffer string
#   -   x2  = size_t count


.global _start
.section .data
    hello: .asciz "Hello, World!\n"

.section .text
_start:
    
    // Program to print "Hello, World!" into stdout
    mov x8, #0x40
    mov x0, #1 
    ldr x1, =hello
    mov x2, #15
    mov x8, #0x40
    svc 0
    
    // Program to exit program
    mov x8, #0x5d
    mov x0, #0
    svc 0
    