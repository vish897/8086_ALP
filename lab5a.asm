; move block of string data
Assume cs: code, ds:data
data segment
	a      db 'vishva'
	len    db $-a
	b      db 6 dup(?)
data ends

code segment
	start:
		mov ax, data
		mov ds, ax
		mov es, ax
		
		lea si, a
		lea di, b
		mov cx, 0h
		mov cl, len
		
		cld
		rep movsb
		
		mov ah, 09h
		int 21h 
code ends
end start		