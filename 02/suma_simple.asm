; suma_simple.asm
section .data
    resultado db "Resultado: ", 0
    num1 db 5
    num2 db 3

section .bss
    suma resb 1

section .text
    global _start

_start:
    mov al, [num1]
    add al, [num2]
    mov [suma], al

    ; Salida (NO imprime el número, solo "Resultado:")
    mov eax, 4
    mov ebx, 1
    mov ecx, resultado
    mov edx, 10
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80
