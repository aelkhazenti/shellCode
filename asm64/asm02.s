.section .data
number:
    .ascii "1337\n"

.section .text
.global _start

_start:
    # Afficher la chaîne
    mov $1, %rax 
    mov $1, %rdi
    mov $number, %rsi  
    mov $5, %rdx
    syscall

    # Terminer le programme
    mov $60, %rax 
    xor %rdi, %rdi
    syscall
