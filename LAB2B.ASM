; To perform division of two 16-bit numbers
Assume cs:code, ds: data

data segment
	a dw 403h ;divident
	b dw 200h ;divisor
	quotient dw 0h
	remainder dw 0h
data ends

code segment
	start:
	mov ax,data
	mov ds,ax
	
	mov ax,a
	
	div b
	mov quotient,ax
	mov remainder,dx
	mov ah,4ch
	int 21h
code ends
end start