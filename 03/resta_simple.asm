; resta_simple.asm
section .data
    a db 10
    b db 4
    msg db "Resta realizada", 0xA

section .text
    global _start

_start:
    mov al, [a]
    sub al, [b]

    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, 16
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80
