.section .data
String: .asciz "0x50ba 0b50xa 0b50ba"
Result: .byte 0

.section .text
     
    movzbl Result(%rip), %eax
    cmpb $0, %al
    je success

error:
    mov $60, %rax
    mov $1, %rdi
    syscall

success:
    mov $60, %rax
    xor %rdi, %rdi
    syscall
