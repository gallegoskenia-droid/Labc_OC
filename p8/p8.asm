%include "../LIB/pc_iox.inc" 
section .data
msg db 'el numero es menor', 0xa, 0
num db 'lo ingresado es un numero', 0xa, 0
;ltr db 'lo ingresado es una letra', 0xa, 0

section	.text

	global _start     

_start:
    
    ;a
    call getche
    sub al, '0'
    cmp al, 5
    jae .mayor 
    mov edx, msg
    call puts 

.mayor mov al, 10
    call putchar

    ;b
    call getche 

    cmp al, '0'
    jb .fin
    cmp al, '9'
    jbe .numero ;jumpBelow

    cmp al, 'A'
    jb .fin
    cmp al, 'Z'
    jbe .letra

.numero mov edx, num
    call puts
    jmp .fin

.letra mov edx, msg
    call puts
    jmp .fin

.fin mov al, 10
    call putchar

mov eax, 1 ;final 
int 0x80 

