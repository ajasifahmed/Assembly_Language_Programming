dosseg
.model small
.stack 100h
.data
s1 db 10 dup('ASIF')
s2 db '$'
.code
main proc
mov ax,@data
mov ds,ax
mov dx,offset s1
 
mov ah,9
int 21h
mov dl,10
int 21h

mov ah,4ch
int 21h
main endp
end main
