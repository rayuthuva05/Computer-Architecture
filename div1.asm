.model small
.stack 100h

.data
n db 7
m db 2
r db ?

.code 
start:
mov ax,@data
mov ds,ax

mov ah,00
mov al,n
div m
mov r,ah

mov dl,al
add dl,48

mov ah,02h
int 21h

mov dl,10
mov ah,02h
int 21h

mov dl,r
add dl,48

mov ah,02h
int 21h

mov ax,4c00h
int 21h

end start


