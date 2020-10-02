; Find a byte/character in string data
Assume cs: code, ds:data
data segment
	a   db 'hello'
	len dw $-a
	fin db 'a'
	m1  db 'found$'
	m2  db 'not found$'
data ends

code segment
	start:
		mov ax, data
		mov ds, ax
		mov es, ax
		
		lea di, a
		mov cx, len
		mov al, fin
		
		cld
		l1:
			scasb
		loopne l1
		jne not_found
		lea dx, m1
		jmp progend
		
		not_found:
			lea dx, m2
		
		progend:
			mov ah, 09h
			int 21h 
			mov ah, 4ch
			int 21h
code ends
end start	
