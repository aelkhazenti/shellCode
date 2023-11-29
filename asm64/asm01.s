.section .text
.global _start

_start:
	# Terminer le programme
	xor %rax, %rax
	xor %rdi, %rdi        
	mov $60, %rax
    syscall

