; To find square of an 8-bit number
Assume cs:code, ds: data

data segment
	a db 31h
	init dw 0h
	result dw 0h
data ends

code segment
	start:
	mov ax,data
	mov ds,ax
	
	mov ax,init ;Initialise the accumulator register with 0
	mov al,a
	
    mul a
	mov result, ax
	mov ah,4ch
	int 21h
code ends
end start
