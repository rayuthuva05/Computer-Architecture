.model small
.stack 100h

.data
msg db "Enter integers: $"
n1 db 0
n2 db 0
n3 db 0
msg2 db " is Greater number$"
.code
start:
	mov ax,@data
	mov ds,ax
	
	mov dx,offset msg 
	mov ah,09h
	int 21h
	
	mov dl,10
	mov ah,02h
	int 21h
	
	mov ah,01h
	int 21h
	sub al,48
	mov n1,al
	
	mov dl,10
	mov ah,02h
	int 21h
	
	mov ah,01h
	int 21h
	sub al,48
	mov n2,al
	
	mov dl,10
	mov ah,02h
	int 21h
	
	mov ah,01h
	int 21h
	sub al,48
	mov n3,al
	
	mov dl,10
	mov ah,02h
	int 21h
	
	mov al,n1
	
	cmp al,n2
	jge f1
	jl f2
	
	f1:
		mov bl,n3
		cmp al,bl
		jge f3
		jl f4
	
		f3:
			mov al,n1
			mov dl,al
			add dl,48
			mov al,dl
			mov ah,02h
			int 21h
			
			mov dx,offset msg2
			mov ah,09h
			int 21h
			jmp endn
		
		f4:
			mov al,bl
			mov dl,al
			add dl,48
			mov al,dl
			mov ah,02h
			int 21h
				
			mov dx,offset msg2
			mov ah,09h
			int 21h
			jmp endn
	f2:
		mov al,n2
		
		cmp al,n3
		jge f5
		jl f6
		
		f5:
			mov al,n2
			mov dl,al
			add dl,48
			mov al,dl
			mov ah,02h
			int 21h
				
			mov dx,offset msg2
			mov ah,09h
			int 21h
			jmp endn
			
		f6:
			mov al,n3
			mov dl,al
			add dl,48
			mov al,dl
			mov ah,02h
			int 21h
				
			mov dx,offset msg2
			mov ah,09h
			int 21h
	endn:
			
				
	mov ax,4c00h
	int 21h
end start
