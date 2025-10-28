%include "../LIB/pc_iox.inc" 
section .data

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

mov eax, 1 ;final 
int 0x80 

section .data
msg db 'el numero es menor', 0xa, 0
