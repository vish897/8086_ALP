; descending order
assume cs: code, ds:data
data segment
	a      dw 2h, 3h, 4h, 5h
	len    db 4h
	result dw 4 dup(?)
data ends

code segment
	start:
		mov ax, data
		mov ds, ax
		
		mov cx, 0h
		mov cl, len
		lea di, result
		lea si, a
		
		l1:
			mov ax,[si] 
			mov [di],ax
			add di,2h
			add si,2h
		loop l1
		
		mov cx, 0h
		mov cl, len
		dec cx
		
		outerloop:
			lea si, result
			mov dx,cx
			
			innerloop:
				mov ax, [si]
				mov bx, [si+2]
				cmp ax, bx
				jg noswap
				mov [si], bx
				mov [si+2], ax

				noswap:
					add si, 2h
					dec dx
			jnz innerloop
		loop outerloop
		
		progend:
			mov ah, 4ch
			int 21h 
			align 16
code ends
end start		