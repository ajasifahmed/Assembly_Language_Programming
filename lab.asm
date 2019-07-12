dosseg
 .model small
 .stack 100h
.data
a db '1'

 .code
 main proc
mov ah,2
mov dl,a
int 21h
mov dl,10
int 21h
inc a
mov dl,a
int 21h
int 21h
inc a
mov dl,a
int 21h
int 21h 
int 21h
mov dl,10
int 21h
inc a
mov dl,a
int 21h
int 21h
int 21h
int 21h
mov dl,10
int 21h
inc a
mov dl,a
int 21h
int 21h
int 21h
int 21h
int 21h
mov ah,4ch
 int 21h
 main endp
 end main