  dosseg
 .model small
 .stack 100h
 .data
 .code
 main proc
 mov cx,10
 mov ah,2
 mov dl,'0'
 L1:
int 21h
 ;mov bl,dl
 inc dl
;mov dl,bl
Loop L1
mov ah,4ch

 end main
 main endp