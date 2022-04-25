ASSUME CS:CODE,DS:DATA
DATA SEGMENT
        NUM DW 0004H
        SUM DW 01 DUP(?)
DATA ENDS
CODE SEGMENT
START:
        MOV AX,DATA
        MOV DS,AX
        MOV AX,0000H
        MOV BX,NUM
        LABEL1:
                ADD AX,BX
                DEC BX
                JNZ LABEL1
        MOV DI,OFFSET SUM
        MOV [DI],AX
        MOV AH,4CH
        INT 21H
CODE ENDS
END START
