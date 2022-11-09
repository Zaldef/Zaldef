TITLE Guilherme Roelli (22899140)
.MODEL SMALL
.STACK 100h
.DATA
LINHA   EQU  4
COLUNA  EQU  4
    MATRIZ DB LINHA DUP(COLUNA DUP(?))
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        XOR AX,AX
        XOR BX,BX
        XOR SI,SI
        CALL MATRIZ_IN
        MOV AH,02h
        OR DL,30h
        INT 21h

    FIM:
    MOV AH,4Ch         
    INT 21h 
    MAIN ENDP

    MATRIZ_IN PROC
        PUSH CX
        PUSH BX
        PUSH SI
        MOV CL, LINHA
        IN1:
            MOV CH,LINHA    
        IN2:
            INT 21h
            AND AL,0Fh
            MOV MATRIZ [BX][SI],AL
            INC SI
            DEC CH 
            JNZ IN2
            ADD BX,LINHA
            DEC CL
            JNZ IN1
        PUSH SI
        PUSH BX
        PUSH CX
        RET
        LOOP MATRIZ_IN
    MATRIZ_IN ENDP
    MATRIZ_OUT PROC

    MATRIZ_OUT ENDP
END MAIN