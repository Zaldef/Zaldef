TITLE Guilherme Bernardini Roelli RA: 22899140
.MODEL SMALL
.STACK 100h 
.DATA
MSG1    DB 'ESCOLHA A ENTRADA: ',13,10,'$'
MSG2    DB 13,10,'ESCOLHA A SAIDA: ',13,10,'$'
MSG3    DB 'DIGITE O NUMERO: $'
MSG4    DB 'SAIDA: $'
IN1     DB '1- BINARIO',13,10,'$'
IN2     DB '2- HEXADECIMAL',13,10,'$'

.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX

        LEA DX,MSG1
        CALL PRINT
        LEA DX,IN1
        CALL PRINT
        LEA DX,IN2
        CALL PRINT
        MOV AH,08H          
        INT 21h

        CMP AL,31H
        JE IBIN
        CMP AL,32H
        JE IHEX

    IBIN:
        LEA DX,MSG3
        CALL PRINT
        CALL INBIN
        JMP OUT
    IHEX:
        LEA DX,MSG3
        CALL PRINT
        CALL INHEX
        JMP OUT
    OUT:
        LEA DX,MSG2
        CALL PRINT
        LEA DX,IN1
        CALL PRINT
        LEA DX,IN2
        CALL PRINT
        MOV AH,8          
        INT 21h

        CMP AL,31H
        JE OBIN
        CMP AL,32H
        JE OHEX

    OBIN:
        LEA DX,MSG4
        CALL PRINT
        CALL OUTBIN
        JMP EXIT
    OHEX:
        LEA DX,MSG4
        CALL PRINT
        CALL OUTHEX
        JMP EXIT

    EXIT:    
        MOV AH,4CH
        INT 21H         ; Exit programa
        
    MAIN ENDP
  
    INBIN PROC
            MOV 	CX,16
    		MOV 	AH,1h
    		INT 	21h
    IB1: 	CMP 	AL,0Dh
    		JE 		IB2
    		AND 	AL,0Fh
    		SHL 	BX,1
    		OR 		BL,AL
    		INT 	21h
    		LOOP 	IB1
    IB2:	RET   
    INBIN ENDP
  
    INHEX PROC
            XOR 	BX,BX
    		MOV 	CL,4
    		MOV 	AH,1h
    		INT 	21h
    FINAL:	CMP 	AL,0Dh
    		JE 		FINZ
    		CMP 	AL,39h
    		JG 		LETRA
    		AND 	AL,0Fh
    		JMP 	DESL
    LETRA: 	SUB 	AL,37h
    DESL: 	SHL 	BX,CL
    		OR 		BL,AL
    		INT 	21h
    		JMP 	FINAL 
    FINZ:	RET
    INHEX ENDP

    OUTBIN PROC
		    MOV 	CX,16
		    MOV 	AH,02h
    OB1: 	ROL 	BX,1
		    JNC 	OB2
		    MOV 	DL,31h
		    INT 	21h
		    JMP		OB3
    OB2: 	MOV 	DL,30h
		    INT 	21h
    OB3:	LOOP	OB1
	RET
    OUTBIN ENDP
    
    OUTHEX PROC
        MOV AH,02h
        OH1:
            MOV CX,4
            XOR DL,DL
            OH2: SHL BX,1
                RCL DL,1
                LOOP OH2
                CMP DL,9H
                JBE OH3
                ADD DL,37h
                JMP OH4
            OH3: OR DL,30h
                JMP OH4
            OH4:
                INT 21H
                CMP BX,0
                JE OH5
                LOOP OH1
        OH5: RET

    OUTHEX ENDP
    

    ;
    PRINT PROC
        MOV AH,09h         
	    INT 21h            
	    RET 
    PRINT ENDP
END MAIN