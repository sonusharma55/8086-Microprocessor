;program2
;dosseg
.model small
.stack 100h
.data
 num1 dw 15
 num2 dw 11
 result dw 1 dup(0)
.code
 start:mov ax,@data
       mov ds,ax
          mov ax,num1
          add ax,num2
          mov result,ax
       mov ax,4c00h
       int 21h
 end start
.end
