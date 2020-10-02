; String reversal
Assume cs: code, ds:data
data segment
	a      db 'hello'
	len    db $-a
	b      db 5 dup('$')
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
		add si, cx
		sub si, 1h
		
		l1:
			movsb
			sub si, 2h			
		loop l1
		
		mov ah, 09h
		int 21h 
code ends
end start		
