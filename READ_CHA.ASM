;dosseg
.model small
.stack 100h
.data
 message db 'Type any key',0dh,0ah,'$'
 read_char db ?
.code
 start:mov ax,@data
       mov ds,ax

 ;display message

       mov dx,offset message
       mov ah,09h
       int 21h

 ;read character from keyboard

  again:mov ah,09h
        int 21h
        mov read_char,al

 ;if esc key is pressed then terminate to dosseg

         cmp al,11011b
         jnz again

         mov ax,4c00h
         int 21h
 end start
.end
