;dosseg
.model small
.stack 100h
.data
 num dw 0FFFFH
.code
 start:mov ax,@data
       mov ds,ax
         mov ax,num
         mov bx,ax
         mov cx,ax
         mov dx,ax
       mov ax,4C00H
       int 21h
 end start
.end

