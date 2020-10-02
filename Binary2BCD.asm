; Binary to BCD

Assume cs: code, ds:data

data segment
	a      db 17h
data ends

code segment
	start:
		mov ax, data
		mov ds, ax
		mov ax, 0h
		mov bx, 0h
		mov cx, 0h
		mov dx, 0h
		
		mov al, a
		mov bx, 0AH
		div bx
		mov cl, 4H
		rol ax, cl
		add dx, ax
	
		int 3h 
code ends
end start		
