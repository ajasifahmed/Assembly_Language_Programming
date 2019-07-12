dosseg
print macro p1
mov dx,offset p1
mov ah,9
int 21h
endm

.model small
.stack 100h
.data
s1 db 'THE$'
S2 db 'WALKING$'
s3 db 'DEAD$'
.code
main proc
mov ax,@data
mov ds,ax

print s1
call nl
print s2
call nl
print s3
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