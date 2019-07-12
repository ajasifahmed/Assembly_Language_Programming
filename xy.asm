dosseg
print macro p1
mov dx,offset p1
mov ah,9
int 21h
endm

.model small
.stack 100h
.data
v1 db 'k$'
v2 db 'ku$'
v3 db 'kud$'
v4 db 'kudc$'
v5 db 'kudcs$'
.code
main proc
mov ax,@data
mov ds,ax
print v1
call nl
print v2
call nl
print v3
call nl
print v4
call nl
print v5
call nl
mov ah,4ch
int 21h
main endp

nl proc
mov dl,10
mov ah,2
int 21h
mov dl,13
int 21h
ret
nl endp
end main

