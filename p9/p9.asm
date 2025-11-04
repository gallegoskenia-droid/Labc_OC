%include "../LIB/libpc_iox.inc"

section .data 
msg_1 db 'Ingrese dato: ', 0xa, 0
    ;capt_vect1 db 10, 0xa, 0
    ;capt_vect2 db 10,0xa,0 
length: equ N

section .start 
;capturar 
    mov al, msg_1
    call puts 
    mov al, 10
    call putchar

    call getch 
    sub al, '0'
    comp al, '9'
    ja .fin ;Above 
    mov al, N  
    call pHex_b
    mov al, 10
    call puts 
    
    mov al, msg_1
    call puts 
    mov al, 10
    call putchar

.fin mov al, 10
    call puts


