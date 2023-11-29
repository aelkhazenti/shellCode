.section .data
message:
    .ascii "1337\n"
message_len = . - message

.section .bss
.lcomm input, 2

.section .text
.global _start

_start:
    # Lire 2 caractères (pour "42")
    mov $0, %rax
    mov $0, %rdi
    lea input(%rip), %rsi
    mov $2, %rdx
    syscall

    # Vérifier si l'entrée est "42"
    movb input(%rip), %al
    cmp $'4', %al
    jne exit
    movb 1+input(%rip), %al
    cmp $'2', %al
    jne exit

    # Afficher "1337"
    mov $1, %rax
    mov $1, %rdi
    lea message(%rip), %rsi
    mov $message_len, %rdx
    syscall

exit:
    # Sortie
    mov $60, %rax
    xor %rdi, %rdi
    syscall
