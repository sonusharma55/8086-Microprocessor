;dosseg
.model small
.stack 100h
.data
 src_string dw 0ffffh,0111h,7000h,0002h,0eeeeh
 smallest_no dw ?
 string_cnt dw 5
.code
 start:mov ax,@data
       mov ds,ax
       mov cx,string_cnt
       mov si,offset src_string
       cld
       mov ax,0ffffh
 level1:cmp ax,[si]
        jb level2
        mov ax,[si]
 level2:inc si
        inc si
        loop level1
       mov smallest_no,ax
       mov ax,4c00h
       int 21h
  end start
 .end
