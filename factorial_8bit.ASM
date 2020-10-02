; Factorial of a 8-bit number
Assume cs:code, ds: data

data segment
	a      db 4h
	result dw 0h
data ends

code segment
	start:
	mov ax, data
	mov ds, ax
	
	mov ax, 0h  ;initialise ax with 0h
	mov cx, 0h  ;initialise cx with 0h
	
	mov al, a
	
	mov cl, a
	sub cl, 1h  ; Setting the loop runs = number - 1 
	
	l1:
	   mul cl
	loop l1
	
	mov result,ax
	mov ah,4ch
	int 21h
code ends
end start
