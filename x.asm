dosseg
 .model small
 .stack 100h
 .code
 main proc
mov ah,6
mov al,5
mov bh,10100100b
mov cl,0
mov ch,0
mov dl,10
mov dh,10
int 10h
mov ah,4ch
int 21h
main endp
end main
