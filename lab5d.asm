; length of string data

Assume cs: code, ds:data
data segment
	a      db 'hello$'
data ends

code segment
	start:
		mov ax, data
		mov ds, ax
		mov es, ax
		
		lea di, a
		mov cx, 0h
		mov ax, 0h
		mov al,'$'
		
		
		l1:
			cld
			scasb
			jz progend
			add cx, 1h
		jmp l1
		
		progend:
			mov ah, 4ch
			int 21h 
code ends
end start	

