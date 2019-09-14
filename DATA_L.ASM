;dosseg
.model small
.stack 100h
.data
 src_string dw 1000h,5000h,3000h,0FFFFH,0100H
 st_cnt dw 5
 largest_no dw ?
.code
 start:mov ax,@data
       mov ds,ax
       cld
       mov cx,st_cnt
       mov si,offset src_string
       mov ax,0
 level1:cmp ax,[si]
        ja level2
        mov ax,[si]
 level2:inc si
        inc si
        loop level1
       mov largest_no,ax
       mov ax,4c00h
       int 21h
  end start
.end
       
