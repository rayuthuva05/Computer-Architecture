.model small
.stack 100h

.data
msg1 db "Enter a number: $"
msg2 db "The number: $"
a db ?

.code
	mov ax,@data
	mov ds,ax
	
	mov dx,offset msg1
	mov ah,09h
	int 21h
	
	call read
	call newLine
	
	mov dx,offset msg2
	mov ah,09h
	int 21h
	
	call print
	
	mov ax,4c00h
	int 21h
	
	proc newLine
		mov dl,0ah
		mov ah,02h
		int 21h
	ret
	endp
	
	proc read
		mov ah,01h
		int 21h
		;sub al,48
		mov a,al
	ret
	endp
	
	proc print
		mov dl,a
		;add dl,48
		mov ah,02h
		int 21h
	ret
	endp
	

end