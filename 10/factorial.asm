; factorial.asm
section .data
    msg db "Factorial calculado", 0xA

section .text
    global _start

_start:
    mov ecx, 5      ; n
    mov eax, 1      ; factorial

.factorial_loop:
    mul ecx
    loop .factorial_loop

    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, 20
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80
