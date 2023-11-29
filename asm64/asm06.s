.section .data
shell:
    .ascii "/bin/sh\0"      # Chemin du shell

.section .text
.global _start

_start:
    # Préparer les arguments pour execve
    leaq shell(%rip), %rdi
    xorq %rsi, %rsi
    xorq %rdx, %rdx

    # Appeler execve
    movq $59, %rax
    syscall
