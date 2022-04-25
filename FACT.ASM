ASSUME CS:CODE,DS:DATA
DATA SEGMENT
        NUM DW 0004H
        FACT DW 01 DUP(?)
DATA ENDS
CODE SEGMENT
START:
        MOV AX,DATA
        MOV DS,AX
        MOV AX,0001H
        MOV BX,NUM
        LABEL1: MUL BX
                DEC BX
                JNZ LABEL1
        MOV DI,OFFSET FACT
        MOV [DI],AX
        MOV AH,4CH
        INT 21H
CODE ENDS
END START
