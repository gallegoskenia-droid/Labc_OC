%include "../LIB/pc_iox.inc" 
section .data

section	.text

	global _start     

_start:
    
    ;a
   ;n al, 80h
   ;mv bx, 5
   ;comp al, bx
   ;jae .mayor
   ;out 
;mayor out 

    ;b
   ;in 

    ;c
    in al, 80h
    mov 
.nuevo mov al, '*'
    out 0x92, al
    mov al, 10
    call putchar
    loop .nuevo

    ;d 
   ;in al, 
   ;out 
    ;ov cx, 10 

mov eax, 1 ;final 
int 0x80 