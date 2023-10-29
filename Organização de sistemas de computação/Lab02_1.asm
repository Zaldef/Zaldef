.MODEL SMALL
.DATA
    frase  DB 8,0, '********'
          DB '$'
.CODE
MAIN PROC
    mov ax, @data
    mov ds, ax
    mov ah, 0ah
    mov dx, offset frase
    int 21h
    
    mov ah,02
    mov dl,10
    int 21h ; para nao imprimir por cima do echoap
    
    mov ah,09
    mov dx, offset frase
    add dx, 2   ; para nao imprimir 8 e 0
    int 21h
    
    mov ah, 4ch ; Exit
    int 21h
    
main endp
end main