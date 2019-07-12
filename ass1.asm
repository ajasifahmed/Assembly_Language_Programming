 ;      To print the numbers between inputs numbers .
;  Enter smaller no first.
dosseg
.model small
.stack 100h
.data
n1 db ?
n2 db ?
.code
main proc
mov ax,@data
mov ds,ax
mov bl,48

mov ah,1
int 21h
sub al,48
mov n1,al 
mov cl,n1

int 21h
sub al,48
mov n2,al

mov dl,10
mov ah,2
int 21h

mov dl,bl
l1:
int 21h
mov dl,10
int 21h
inc bl
inc cl
mov dl,bl
cmp cl,n2
jl l1
mov ah,4ch
int 21h
main endp
end main