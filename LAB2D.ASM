; Factorial of a 8-bit number
Assume cs:code, ds: data

data segment
	a db 4h
	init dw 0h
	result dw 0h
data ends

code segment
	start:
	mov ax,data
	mov ds,ax
	
	mov ax,init ;initialise the accumulator
	mov cx,init ;initialise cx
	
	mov al,a
	mov cl,a
	
	sub cl,1h
	l1:
	mul cl
	loop l1
	
	mov result,ax
	mov ah,4ch
	int 21h
code ends
end start