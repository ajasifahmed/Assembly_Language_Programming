dosseg
.model small
.stack 100h
.data
rem db ?
qut db ?
.code
main proc
mov ax,@data
mov ds,ax
mov ax,'26'
mov dx,'0'
mov bx,'4'
mov qut,ax
mov rem,dx
mov dx,qut
mov ah,2
int 21h
mov dx,rem
mov ah,2
int 21h 
mov ah,4ch
int 21h
main endp
end main