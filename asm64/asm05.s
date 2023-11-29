.section .data
path:
    .ascii "./asm64/asm01\0"     # Chemin vers le fichier asm01

.section .text
.global _start

_start:
    # Préparer les arguments pour execve
    movq $path, %rdi
    xorq %rsi, %rsi
    xorq %rdx, %rdx

    # Appeler execve
    movq $59, %rax
    syscall
