; BCD to binary

Assume cs: code, ds:data
data segment
	a      db 23h
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
		and al, 0F0H
		mov cl, 4h
		ror al, cl
		mov bx, 0AH
		mul bx
		add dx, ax 
		
		mov ax, 0h
		mov al, a
		and al, 0FH
		add dx, ax 
	
		int 3h 
code ends
end start	
