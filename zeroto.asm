   dosseg
   .model small
   .stack 100h
.data  
 .code
 main proc
mov cl,10
mov dl,'0'

l1:
mov ah,2
int 21h
inc dl
loop l1
    

 
mov ah,4ch
   int 21h
   main endp
   end main
