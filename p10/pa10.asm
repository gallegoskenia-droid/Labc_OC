
section .data
msg db 'abcdef',0xa, 0

section	.text

	global _start     

_start:

proc1:
;sumar dos numeros
    ;primer paso 
    push ebp
    mov ebp, esp

    mov eax, [ebp+8]
    add eax, [ebp+12]

    ;ultimo paso 
    pop ebp
    ret

proc2:
;length de un char
    push ebp
    mov ebp,esp
   
    mov ecx, [msg]
    mov al,0
    inc al
    call putchar
    loop 





    



    pop ebp
    ret

proc3: 
;retorna valor del bit
   ;primer paso 
    push ebp
    mov ebp, esp

    ;ultimo paso 
    pop ebp
    ret



mov eax, 1 ;final 
int 0x80 