.model small
.stack 100h

.data
n db 10
msg db "Sum: $"
sum db 0
r db 0
.code
start:
	mov ax,@data
	mov ds,ax
	
	mov dx,offset msg
	mov ah,09h
	int 21h
		
	mov cl,n
	mov bl,1
	
	lstart:
		mov dl,sum
		add dl,bl
		mov sum,dl
		inc bl
	loop lstart

		mov ah,00
		mov bl,10
		mov al,sum
		div bl
		mov r,ah
		
		mov dl,al
		add dl,48
		mov ah,02h
		int 21h
		
		mov dl,r
		add dl,48
		mov ah,02h
		int 21h
		
	mov ax,4c00h
	int 21h
end start

	;mov cl,5
	;sum db 0
	;lstart:
		;mov dl,sum
		;add dl,cl
		;mov sum,dl
	;loop start