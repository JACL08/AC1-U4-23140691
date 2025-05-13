; entrada_usuario.asm
section .bss
    buffer resb 32

section .data
    msg db "Introduce algo: ", 0xA
    len equ $ - msg

section .text
    global _start

_start:
    ; Mensaje
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, len
    int 0x80

    ; Leer
    mov eax, 3
    mov ebx, 0
    mov ecx, buffer
    mov edx, 32
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80
