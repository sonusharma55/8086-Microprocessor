.model small
.stack 100h
.data
src_string dw 10,20,30,80,69
cnt dw 5
result dw ?
.code 
start:mov ax,@data
      mov ds,ax
      mov cx,cnt
      mov si,offset src_string
      mov ax,0
     levelz:cmp [si],ax
           jb ahead
           mov ax,[si]
     ahead:inc si
           inc si
           loop levelz
         mov result,ax
      mov ax,4c00h
      int 21h
      end start
.end 
