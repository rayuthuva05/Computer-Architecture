.model small
.stack 100h

.data
msg db "Enter marks: $"
t db 0
o db 0
m db 0
msg2 db "Grade: A$"
msg3 db "Grade: B$"
msg4 db "Grade: C$"
msg5 db "Grade: D$"
msg6 db "Grade: Fail$"

.code
start:
	mov ax,@data
	mov ds,ax
	
	mov dx,offset msg 
	mov ah,09h
	int 21h
	
	mov ah,01h
	int 21h
	sub al,48
	mov t,al
	
	mov ah,01h
	int 21h
	sub al,48
	mov o,al
	
	mov al,t
	mov bl,10
	mul bl
	mov dl,al
	add dl,o
	
	mov m,dl
	
	mov dl,10
	mov ah,02h
	int 21h
	
	mov al,m
	cmp al,90
	jge f1
	
	cmp al,75
	jge f2
	
	cmp al,60
	jge f3
	
	cmp al,50
	jge f4
	
	mov dx,offset msg6
	mov ah,09h
	int 21h
	jmp endn
	
	f1:
		mov dx,offset msg2
		mov ah,09h
		int 21h
		jmp endn
		
	f2:
		mov dx,offset msg3
		mov ah,09h
		int 21h
		jmp endn
	
	f3:
		mov dx,offset msg4
		mov ah,09h
		int 21h
		jmp endn	
		
	f4:
		mov dx,offset msg5
		mov ah,09h
		int 21h
		jmp endn				
				
	endn:
	
	mov ax,4c00h
	int 21h
end start

