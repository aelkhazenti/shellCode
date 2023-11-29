.section .data

.section .bss
.lcomm number, 4

.section .text
.global _start

_start:
    # Lire l'entrée
    mov $0, %rax
    mov $0, %rdi
    mov $number, %rsi
    mov $4, %rdx
    syscall

    # Vérifier si l'entrée est paire
    mov number, %rax
    and $1, %rax
    jz even

    # Impair: retourner 1
    mov $60, %rax
    mov $1, %rdi
    syscall

even:
    # Pair: retourner 0
    mov $60, %rax
    xor %rdi, %rdi
    syscall
