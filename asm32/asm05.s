.section .data
path:
    .ascii "./asm32/asm01\0"     # Chemin vers le fichier asm01

.section .text
.global _start

_start:
    # Préparer les arguments pour execve
    movl $path, %ebx
    xorl %ecx, %ecx
    xorl %edx, %edx

    # Appeler execve
    movl $11, %eax
    int $0x80
