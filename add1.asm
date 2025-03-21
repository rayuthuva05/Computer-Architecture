.model small
.stack 100h

.data 
msg1 db 3
msg2 db 6

.code
start:
	mov ax,@data
	mov ds,ax
	
	mov dl,msg1
	add dl,msg2
	add dl,48
	
	mov ah,02h
	int 21h
	
	mov ax,4c00h
	int 21h
	
	end start