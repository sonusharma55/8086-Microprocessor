;dosseg
.model small
.stack 100h
.data
 src_string dw 1000h,0ffffh,0eeeeh,7777h,7000h
 dest_string dw 5 dup(0)
 string_cnt dw 5
.code
 start:mov ax,@data
       mov ds,ax
       mov es,ax
       cld
       mov si,offset src_string
       mov di,offset dest_string
       mov cx,string_cnt
  rep  movsw
       mov ax,4c00h
       int 21h
 end start
.end
