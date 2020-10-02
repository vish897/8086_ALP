; n=4
Assume cs:code, ds: data

data segment
	a db 2h
	b db 4h
	c db 3h
	d db 1h
	n dw 4h
	resultq dw 0h
	resultr dw 0h
data ends

code segment
	start:
	mov ax,data
	mov ds,ax
	
	mov ax,0h
	mov bx,0h
	
	mov al,a
	mov bl,b

	add ax,bx
	mov bl,c
	add ax,bx
	mov bl,d
	add ax,bx
	div n
	
	mov resultq,ax
	mov resultr,dx
	mov ah,4ch
	int 21h
code ends
end start

	

