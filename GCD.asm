; Gcd of 2 numbers
Assume cs: code, ds:data

data segment
	a      dw 21h
	b      dw 9h
data ends

code segment
	start:
		mov ax, data
		mov ds, ax
		
		mov ax, a
		mov bx, b
		cmp ax, cx
		jl l1
		xchg ax, bx

		l1:	
			mov dx, 0h
			div bx
			mov ax, bx
			cmp dx, 0h
			je res
			mov bx, dx
		jmp l1
		
		res:
			mov dx, ax
		
		mov ah, 4ch
		int 21h
		align 16
code ends
end start	
