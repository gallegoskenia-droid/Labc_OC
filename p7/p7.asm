%include "../LIB/pc_iox.inc" 
section .data

section	.text

	global _start     

_start:                 
    ;a
    mov eax, 0x22446688
    call pHex_dw
    mov al, 10
    call putchar 

    ror eax, 1
    call pHex_dw
    mov al, 10
    call putchar
    
    mov eax, 1	;system call number (sys_exit) -- fin del programa
	int 0x80        ;call kernel
