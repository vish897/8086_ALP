; Calculating number of 1s & 0s in a binary number

Assume cs:code, ds :data

data segment
	a     dw 8h
	ones  dw 0h
	zeros dw 0h
data ends

code segment
	start:
		mov ax, data
		mov ds, ax
		
		mov ax,a
		mov cx,0h
		
		l1:
			cmp cx,10h
			je  progend
			ror ax,1
			jc  isone
			jnc iszero
		
		isone:
			add cx,1
			add ones,1h
			jmp l1

		iszero:
			add cx,1
			add zeros,1h
			jmp l1
		
		progend:
			mov ah,4ch
			int 21h
code ends
end start
