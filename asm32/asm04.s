.section .data

.section .bss
.lcomm number, 4

.section .text
.global _start

_start:
    # Lire l'entrée
    movl $3, %eax
    movl $0, %ebx
    movl $number, %ecx
    movl $4, %edx
    int $0x80

    # Vérifier si l'entrée est paire
    movl number, %eax
    andl $1, %eax
    jz even

    # Impair: retourner 1
    movl $1, %eax
    movl $1, %ebx
    int $0x80

even:
    # Pair: retourner 0
    movl $1, %eax
    xorl %ebx, %ebx
    int $0x80
