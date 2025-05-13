; saludo_usuario.asm
section .data
    saludo db "Hola, Usuario!", 0xA
    longitud equ $ - saludo

section .text
    global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, saludo
    mov edx, longitud
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80
