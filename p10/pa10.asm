%include '../LIB/libpc_iox'

section	.text

	global _start     

_start:

proc1:
    push ebp
    mov ebp, esp

    



mov eax, 1 ;final 
int 0x80 