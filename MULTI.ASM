;program3
;dosseg
.model small
.stack 100h
.data
  num1 dw 4000h
  num2 dw 3000h
  result_high dw ?
  result_low dw ?
.code
start:mov ax,@data
      mov ds,ax
          mov ax,num1
          mov bx,num2
          mul bx
          mov result_low,ax
          mov result_high,dx
      mov ax,4c00h
      int 21h
 end start
.end 
