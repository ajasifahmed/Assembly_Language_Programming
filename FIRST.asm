dosseg
.model small
.stack 100h
.data
.code
main proc
mov ah,2
mov cx,5
mov bx,1
l1:
push cx
mov cx,bx
mov dl,65
l2:
int 21h
inc dl
loop l2
push ax
push dx
mov ah,2
mov dx,10
int 21h
mov dx,13
int 21h
pop dx
pop ax
pop cx
inc bx
loop l1
mov ah,4ch
int 21h
main endp
end main
