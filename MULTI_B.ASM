;dosseg
.model small
.stack 100h
.data
 num1 db 20h
 num2 db 40h
 result_high db ?
 result_low db ?
.code
 start:mov ax,@data
       mov ds,ax
       mov al,num1
       mov bl,num2
       mul bl
       mov result_low,al
       mov result_high,ah
       mov ax,4c00h
       int 21h
 end start
.end
