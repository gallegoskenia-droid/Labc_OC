%include "../LIB/pc_iox.inc" 

section .data
msg_a db 'Ingrese un numero del 0 - 9', 0xa, 0
msg_b db 'Ingrese un numero del 0 - 9 o una letra A-Z', 0xa, 0
msg_d db 'Ingrese 10 caracteres', 0xa, 0
msg db 'el numero es menor', 0xa, 0
num db 'lo ingresado es un numero', 0xa, 0
ltr db 'lo ingresado es una letra', 0xa, 0
cptr db 'Datos Capturados', 0xa, 0
ago db 10 dup(0)
section	.text

	global _start     

_start:
    
    ;a
    mov edx, msg_a
    call puts 
    mov al, 10
    call putchar 

    call getche
    sub al, '0'
    cmp al, 5
    jae .mayor 
    mov edx, msg
    call puts 

.mayor mov al, 10
    call putchar

    ;b
    mov edx, msg_b
    call puts
    mov al, 10 
    call putchar 

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

.letra mov edx, ltr
    call puts
    jmp .fin

.fin mov al, 10
    call putchar

    ;c
    ;d
    mov edx, msg_d
    call puts
    mov al,10
    call putchar 

    mov ecx, 10
    mov esi, ago

.captura call getche 
    mov [esi], al
    inc esi
    loop .captura 

    mov edx, msg
    call puts 

    mov ecx, 10
    mov esi, ago

.imprimir mov al, [esi]
    call putchar 
    mov al, 10
    call putchar 
    inc esi 
    loop .imprimir

mov eax, 1 ;final 
int 0x80 

