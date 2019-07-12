dosseg
.model small
.stack 100h
.data
.code
main proc

mov ah,1
int 21h
mov dl,al 
call nl
mov ah,2
int 21h

call nl
inc dl
int 21h
call nl
inc dl
int 21h
mov ah,4ch
int 21h
main endp

nl proc
push ax
push dx
mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h
pop dx
pop ax
ret
nl endp
end main 