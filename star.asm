dosseg
.model small
.stack 100h
.code
main proc
mov cx,7
mov bx,1

l1:
push cx
mov cx,bx
l2:
mov ah,2
mov dx,bx
add dx,48
int 21h
loop l2
call nl
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