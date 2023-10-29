.model small
.code
main proc 
    MOV AH,02     
    MOV DL,2AH    ; Vai imprimir o "*"
    MOV CX, 50    ; adiciona a quantidade de vezes que vai imprimir em cx
VOLTA:
   MOV AH,02      
   INT 21H         ; Cria um loop até cx = 0
   DEC CX           
   JNZ VOLTA

   MOV AH,4CH
   INT 21H         ; EXIT
   MAIN ENDP
   END MAIN

    