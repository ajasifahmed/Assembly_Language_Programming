   dosseg
   .model small
   .stack 100h
.data 
a db '1'
b db '23'
c db 'asif Ahmed$'
 .code
 main proc
  mov ax,@data
mov ds,ax 
lea dx, c;mov dx, offset c
mov ah,9
int 21h
   

 
mov ah,4ch
   int 21h
   main endp
   end main
