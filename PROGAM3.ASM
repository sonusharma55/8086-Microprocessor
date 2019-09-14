.model small
.stack 100h
.data
    src_string dw 0FF10h,20h,30h,40h,50h
    dest_string dw 5 dup(0)
    rpt dw 5
    .code
    start:mov ax,@data
          mov ds,ax
          mov es,ax
          cld
          mov si,offset src_string
          mov di,offset dest_string
          mov cx,rpt
      rep movsw
          mov ax, 4c00h
          int 21h
          end start
   .end
