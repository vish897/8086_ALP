; ALP to add 2 numbers
Assume  cs:code, ds:data

data segment
	a   dw 122h
	b   dw 123h
	sum dw 0000h
data ends

code segment
	start: 
		mov ax,data
		mov ds,ax
		mov ax,a
		mov bx,b
		add ax,bx
		mov sum,ax 
		mov ah,4ch
		int 21h
code ends
end start
	


