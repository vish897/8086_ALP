; Number of ebven numbers and odd numbers in an array

Assume cs:code, ds :data

data segment
	a    dw 1h,5h,4h
	len  db 3h
	eve  db 0h
	odd  db 0h
data ends

code segment
	start:
		mov ax, data
		mov ds, ax
		
		mov si, offset a
		
		mov cx,0h
		mov cl,len
		mov ax,a[0]
		mov bx,2h
		
		l1:
			cmp cx,0h
			je  progend
			div bx
			cmp dl,0h
			add si,2h
			mov ax,[si]
			sub cx,1h
			je iseven
			jne isodd

		iseven:
			add eve,1h
			jmp l1
		
		isodd:
			add odd,1h
			jmp l1
		
		progend:
			mov ah,4ch
			int 21h
code ends
end start
