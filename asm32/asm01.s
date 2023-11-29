.section .text
.global _start

_start:
	# Terminer le programme
	movl $0, %ebx
	movl $1, %eax
	int $0x80
