; Finding max & min value of an array

Assume cs:code, ds :data

data segment
	a    dw 1h,5h,4h
	len  db 3h
	max  dw 0h
	min  dw 0h
data ends

code segment
	start:
		mov ax, data
		mov ds, ax

		mov si, offset a
		mov ax,[si]
		mov min,ax
		mov max,ax
		mov cx,0h
		mov cl,len
		
		l1:
			mov ax,[si]
			cmp min,ax
			jg minf
			cmp max,ax
			jl maxf
			add si,2h
			loop l1
		
		progend:
			mov ah,4ch
			int 21h
		
		minf:
			mov min,ax
			jmp l1
		
		maxf:
			mov max,ax
			jmp l1
code ends
end start		
