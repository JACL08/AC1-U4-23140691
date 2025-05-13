; hola_mundo.asm
section .data
    msg db "Hola Mundo!", 0xA
    len equ $ - msg

section .text
    global _start

_start:
    mov eax, 4          ; syscall: write
    mov ebx, 1          ; fd: stdout
    mov ecx, msg        ; mensaje
    mov edx, len        ; longitud
    int 0x80

    mov eax, 1          ; syscall: exit
    xor ebx, ebx        ; exit code 0
    int 0x80
