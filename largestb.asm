dosseg
.model small
.stack 100h
.data
src db 10h,20h,15h,69h,50h
cnt dw 5
result db ?
.code
start:mov ax,@data
      mov ds,ax
      mov cx,cnt
      mov si,offset src
      mov al,0
      level1:cmp al,[si]
             ja level2
             mov al,[si]
      level2:inc si
             loop level1
      mov result,al
      mov ax,4c00h
      int 21h
end start     
.end