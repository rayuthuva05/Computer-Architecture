.model small
.stack 100h

.data
n db 4
m db 3

.code
start:
mov ax,@data
mov ds,ax

mov dl,n
sub dl,m
add dl,48

mov ah,02h
int 21h

mov ax,4c00h
int 21h

end start
