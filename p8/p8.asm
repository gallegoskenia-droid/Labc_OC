%include "../LIB/pc_iox.inc" 
section .data

section	.text

	global _start     

_start:
    
    ;a
    in al, 80h
    mov bx, 5
    comp al, bx
    jae .mayor
    out 
.mayor out 

    ;c
    in al, 80h
    mov cx, al
.nuevo al,'*'
    out 0x92, al
    mov al, 10
    call putchar
    loop .nuevo

    ;d 
    in al, 
    out 
    mov cx, 10 




mov eax, 1 ;final 
int 0x80 