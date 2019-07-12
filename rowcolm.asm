dosseg
.model small
.stack 100h
.code
main proc
mov ah,2 ;use for set curor service routine
mov bh,0
 
mov dh,10  ;row
mov dl,15 ;col
int 10h

mov ah,9; character o/p with arttribute
mov al,'a'
;mov bh,0
mov bl,11100000b
mov cx,3
int 10h
mov ah,4ch
int 21h
main endp
end main