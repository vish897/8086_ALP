; TO perform multiplication of two 16-bit numbers
Assume cs:code, ds: data

data segment
	a dw 123h
	b dw 200h
	result dw 2 dup(00h)
data ends

code segment
	start:
	mov ax,data
	mov ds,ax
	
	mov ax,a
	mov bx,b
	
	mul bx
	mov result[0],dx
	mov result[2],ax
	mov ah,4ch
	int 21h
code ends
end start
