dosseg
.model small
.stack 100h
.data 
s1 db 'hello$'
s2 db 'there$'
.code
main proc
mov ax,@data
mov ds,ax
mov dx,offset s1
mov ah,9
int 21h

call nl

mov dx,offset s2
mov ah,9
int 21h
 
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
ret;<----
nl endp
end main