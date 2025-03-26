.model small
.stack 100h

.data
n db 3
m db 2
msg1 db 'Number1 is :'
msg2 db 'Number2 is :'
msg3 db "Output is :"
.code
start:
mov ax,@data
mov ds,ax

mov dx,offset msg1
mov ah,09h
int 21h

mov dl,n
mov ah,02h
int 21h

add dl,m
add 