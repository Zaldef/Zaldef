TITLE 
.MODEL SMALL
.DATA
WAR DB '-----NAO UTILIZAR O NUM PAD -----$'
WAR2 DB 'ENTRADA NAO RECONHECIDA, TENTE NOVAMENTE'
SINAL DB 'QUAL O SINAL DO NUMERO (+/-)? $'
ENTRADAMSG DB 'DIGITE O NUMERO (0-9) : $'
.CODE
    MAIN PROC
        MOV AX,@DATA;
        MOV DS,AX   ; Inicia o segmento de daods 
        LEA DX, WAR
        CALL PRINT
        CALL ENTRADA
        MOV AH,02
        MOV DX,CX
        INT 21H
    END:        ;       
    MOV AH,4Ch  ;              
    INT 21h     ;        
    MAIN ENDP   ; Fim do programa   

ENTRADA PROC
    LEA DX, SINAL
    CALL PRINT

    MOV AH,01
    INT 21h
    CMP AL,'-'
    JE IN_NEGATIVO ; SE '-' DL=1
    XOR DL,DL  ; SE '+' DL=0

    IN_1:
        LEA DX, ENTRADAMSG
        CALL PRINT
        IN_2:
            
            MOV AX,10
            MUL CX
            MOV BX,AX

            MOV AH,01          
            INT 21H     
            CMP AL,0DH
            JE IN_FIM
            AND AL,0Fh
            CMP AL, 9
            JG IN_ERRO
            XOR AH,AH
            ADD BX,AX
            JMP IN_2
            
        

        
         




    IN_NEGATIVO:
        MOV DL, 1
    IN_ERRO:
        LEA DX, WAR2
        JMP IN_1
    IN_FIM: 
    RET
ENTRADA ENDP

PRINT PROC ; Proc para printar na tela alguma string, atravez da funçao 09
        MOV AH,09h         
	    INT 21H            
	    RET 
PRINT ENDP
END MAIN