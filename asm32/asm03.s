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
    movl $3, %eax
    movl $0, %ebx
    movl $input, %ecx
    movl $2, %edx
    int $0x80

    # Vérifier si l'entrée est "42"
    movb input, %al
    cmp $'4', %al
    jne exit

    movb 1+input, %al
    cmp $'2', %al
    jne exit

    # Afficher "1337"
    movl $4, %eax
    movl $1, %ebx
    movl $message, %ecx
    movl $message_len, %edx
    int $0x80

exit:
    # Sortie
    movl $1, %eax
    xorl %ebx, %ebx
    int $0x80
