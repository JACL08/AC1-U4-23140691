; suma_usuario.asm
section .data
    msj db "Suma completada", 0xA

section .text
    global _start

_start:
    mov al, 3
    add al, 4

    mov eax, 4
    mov ebx, 1
    mov ecx, msj
    mov edx, 16
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80
