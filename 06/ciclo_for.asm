; ciclo_for.asm
section .data
    msg db "Suma del ciclo hecha", 0xA

section .text
    global _start

_start:
    mov ecx, 5
    xor eax, eax

.loop:
    add eax, ecx
    loop .loop

    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, 20
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80
