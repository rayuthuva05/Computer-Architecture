.model small
.stack 100h

.data
msg db "For loop $"
n db 5

.code
start:
	mov ax,@data
	mov ds,ax
	
	mov cl,n
	lstart:
		mov dx,offset msg
		mov ah,09h
		int 21h
		
		mov dl,cl
		add dl,48
		mov ah,02h
		int 21h
		
		mov dl,10
		mov ah,02h
		int 21h
	loop lstart
	
	mov ax,4c00h
	int 21h
end start