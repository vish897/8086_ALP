; Packed to unpacked BCD and vice versa
Assume cs:code, ds :data

data segment
	a      dw 23h
	result dw 0h
data ends

code segment
	start:
		mov ax, data
		mov ds, ax
		
		mov ax,a
		mov cx,0h
		mov cl,4h
		
		mov bx,0h
		mov bl,ah
		
		rol ax,cl
		
		ror al,cl
		
		cmp bx,0h
		jne l1
		
		progend:
			mov result,ax
			mov ah,4ch
			int 21h
		
		l1:
			add al,ah
			mov ah,0h
			jmp progend

code ends
end start