; multiplicacion.asm
section .data
    msg db "Multiplicación realizada", 0xA

section .text
    global _start

_start:
    mov al, 6
    mov bl, 3
    mul bl

    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, 25
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80
