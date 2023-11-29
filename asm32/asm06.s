.section .data
shell:
    .ascii "/bin/sh\0"      # Chemin du shell

.section .text
.global _start

_start:
    # Préparer les arguments pour execve
    leal shell, %ebx
    xorl %ecx, %ecx
    xorl %edx, %edx

    # Appeler execve
    movl $11, %eax
    int $0x80
