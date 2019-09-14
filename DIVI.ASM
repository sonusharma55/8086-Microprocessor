;dosseg
.model small
.stack 100h
.data
 dividend db 70h
 diviser db 20h
 remainder db ?
 quotient db ?
.code
 start:mov ax,@data
       mov ds,ax
       mov al,dividend
       mov cl,diviser
       div cl
       mov quotient,al
       mov remainder,ah
       mov ax,4c00h
       int 21h
 end start
.end
