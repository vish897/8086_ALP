Assume  cs:code, ds:data

data segment
        a dw 124h
	b dw 123h
data ends

code segment
	start: 
		mov ax,data
		mov ds,ax
		mov ax,a
		mov bx,b
		sub ax,bx
		mov di,ax 
		mov ah,4ch
		int 21h
code ends
end start
