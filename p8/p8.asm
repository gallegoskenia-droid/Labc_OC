%include "../LIB/pc_iox.inc" 
section .data

section	.text

	global _start     

_start:
    
    ;a
    in al, 80h
    mov bl, al
    cmp bl, 5
    jae .mayor ;jArriba Equal
    mov edx, msg
    call puts
.mayor mov al, 10
    call putchar


mov eax, 1 ;final 
int 0x80 

section .data
msg db 'el numero es menor', 0xa, 0