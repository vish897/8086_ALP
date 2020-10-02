; Packed to unpacked BCD and vice versa
Assume cs:code, ds :data

data segment
	a      dw 23h
	result dw 0h
data ends

; Algotithm:
; Step-1: Rotate the input to left by 1 bit in hexadecimal which is equivalent to 4-bit rotation in binary.
; 	  if input is packed i.e. 00AB H, the rotation makes it 0A B0 H
;         if input is unpacked i.e. 0A0B H, the rotation makes it A0 B0 H
; Step-2: Rotate the lower byte of the result from step-1 to right by 1 bit in hexadecimal which is equivalent to 4-bit rotation in binary.
;         For input from step-1 = 0A B0 H, the rotation makes it 0A 0B H (Which is unpacked, conversion from packed to unpacked done)
;         For input from step-1 = A0 B0 H, the rotation makes it A0 0B H	
; Step-3: If the the higher byte of the input was 00 initially (before) step, the input was packed, the conversion for packed to unpacked is achieved in previous step
;         If the hugher byte of input was not 00, then add the higher byte to the lower byte of the result obtained in step-2.
;         the input from step-2 = A0 0B H, step-3 makes it A0 AB H.
;         Make the higher byte of above result as 00, unpacked to packed is achieved.

code segment
	start:
		mov ax, data 
		mov ds, ax 
		
		mov ax, a    
		mov cx, 0h   
		mov cl, 4h   
		
		mov bx, 0h   
		mov bl, ah   
		
		rol ax, cl
		
		ror al, cl
		
		cmp bx, 0h
		jne l1
		
		progend:
			mov result, ax
			mov ah, 4ch
			int 21h
		
		l1:
			add al, ah
			mov ah, 0h
			jmp progend

code ends
end start
