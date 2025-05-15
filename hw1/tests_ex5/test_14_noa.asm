.section .data
String: .asciz "34234_s_3 43534sa 43 div"
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
