%include '../LIB/pc_iox.inc'

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
   
    mov ecx, [msg +20]
    mov al,0

    .suma inc al
    loop .suma
    call putchar

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