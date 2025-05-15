.section .data
String: .asciz "0b3242340x757570x666 div 0b3242340x757570x666 0x4"
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
