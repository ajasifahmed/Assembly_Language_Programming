dosseg
.model small
.stack 100h
.code
main proc
mov cx,6
mov bx,1
l1:
push cx
mov cx,bx
push bx
mov bx,1
l2:
mov ah,2
mov dx,bx
add dx,64
int 21h
inc bl
loop l2
call nl
pop bx
inc bl
pop cx
loop l1
mov ah,4ch
int 21h
main endp

nl proc
mov dx,10 
mov ah,2
int 21h
mov dx,13
mov ah,2
int 21h
ret
nl endp

end main