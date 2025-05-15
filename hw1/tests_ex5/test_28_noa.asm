.section .data
String: .asciz " 0x50ba div 0b50xa 0b4 0x5778 "
Result: .byte 0

.section .text
     
    movzbl Result(%rip), %eax
    cmpb $3, %al
    je success

error:
    mov $60, %rax
    mov $1, %rdi
    syscall

success:
    mov $60, %rax
    xor %rdi, %rdi
    syscall
