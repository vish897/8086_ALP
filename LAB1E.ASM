Assume  cs:code, ds:data

data segment
	a dw 122h
	b dw 123h
	c dw 124h
data ends

code segment
	start: 
		mov ax,data
		mov ds,ax
		mov ax,a
		mov bx,b
		clc
		add ax,bx
		mov bx,c
		add ax,bx
		mov [di],ax 
		mov ah,4ch
		int 21h
code ends
end start