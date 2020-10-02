; compare 2 strings
Assume cs: code, ds:data

data segment
	a  db 'hello'
	l1 dw $-a
	b  db 'helloo'
	l2 dw $-b
	m1 db 'strings not equal$'
	m2 db 'strings are equal$'
data ends

code segment
	start:
		mov ax, data
		mov ds, ax
		mov es, ax
		
		lea si, a
		lea di, b
		mov ax, l1
		mov bx, l2
		
		cmp ax, bx
		jne disp
		mov cx, ax
		
		loop1:
			cld
			cmpsb
		loope loop1
		
		jnz disp
		lea dx, m2
		jmp progend
		
		disp:
			lea dx, m1
		
		progend:
			mov ah, 09h
			int 21h 
			
			mov ah, 4ch
			int 21h
code ends
end start	
