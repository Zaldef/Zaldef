.MODEL SMALL
.DATA
msg db ' Salve Salve mundo ',13,10,'$' 

.code
main proc
    mov ax, @data ;inicio de DS
    mov cl,10   ; Printa 10x a mensagem
    mov ds, ax 
    mov ah, 9 ; fun??o de escrita de string
    mov dx, offset msg
salta:
    int 21h 
    dec cl
    jnz salta

mov AH, 4Ch    ; exit
int 21h

main endp
end main
 