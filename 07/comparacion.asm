; comparacion.asm
section .data
    msg db "Comparación hecha", 0xA

section .text
    global _start

_start:
    mov al, 5
    mov bl, 3
    cmp al, bl

    ; if al > bl
    jg .mayor

.mayor:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, 18
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80
