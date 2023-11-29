.section .data
number:
    .ascii "1337\n"

.section .text
.global _start

_start:
    # Afficher la chaîne
    movl $4, %eax
    movl $1, %ebx
    movl $number, %ecx
    movl $5, %edx
    int $0x80

    # Terminer le programme
    movl $1, %eax
    xorl %ebx, %ebx
    int $0x80
