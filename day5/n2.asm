.model small
.stack 100h

.data
n db 5
msg db " $"

.code
start:
	mov ax,@data
	mov ds,ax
	
	mov cl,n
	mov bl,1
	
	lstart:		
		mov ah,02h
		mov dl,bl
		add dl,48
		int 21h
		
		inc bl
		
		mov dx,offset msg
		mov ah,09h
		int 21h
		
	loop lstart
	
	mov ax,4c00h
	int 21h
end start