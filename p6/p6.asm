%include "../LIB/pc_iox.inc" 
section .data
N dw 0

section	.text

	global _start       ;must be declared for using gcc

_start:                     ;tell linker entry point
    ;a
    mov ebx, 0x5c4b2a60
    add ebx, 0x2209232
    mov eax,ebx
    call pHex_dw 

    mov al, 10
    call putchar

    ;b
    push bx

    ;c
    mov al, bl 
    shl al, 3
    movzx ax, al 
    call pHex_w

    mov al, 10
    call putchar

    mov [N], ax

    ;d
    inc word [N]

    ;e
    mov ax, bx
    mov bl, 0xFF
    div bl

    call pHex_b
    mov al, 10
    call putchar

    mov al, ah 
    call pHex_b
    mov bh, al
    mov al, 10
    call putchar

    ;f
    add [N], bh
    mov al, [N]
    call pHex_b

    mov al, 10
    call putchar

    ;g 
    dec word [N]
    call pHex_w
    mov al, 10
    call putchar
    
    ;h 
    pop ax 
    call pHex_w
    mov al, 10
    call putchar
    
    mov eax, 1	;system call number (sys_exit) -- fin del programa
	int 0x80        ;call kernel
