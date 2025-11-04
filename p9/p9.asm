%include "../LIB/libpc_iox.inc"

section .data 
msg_1 db 'Ingrese dato', 0xa, 0

capt_vect1 db 10, 0xa, 0
capt_vect2 db 10,0xa,0 


section .start 
    ;A
    mov al, msg_1
    call puts 
    mov al, 10
    call putchar

    call getch 
    sub al, '0'
    comp al, '9'
    jae .fin ;AboveEqual 

    mov al, 10
    call putchar 

    ;


.fin mov al, 10
    call puts


