ASSUME CS:CODE,DS:DATA
DATA SEGMENT
        A DW 0002H
        ONE DW 01 DUP(?)
        TWO DW 01 DUP(?)
DATA ENDS
CODE SEGMENT
START:
        MOV AX,DATA
        MOV DS,AX
        MOV AX,A
        NOT AX
        MOV DI,OFFSET ONE
        MOV [DI],AX
        INC AX
        MOV DI,OFFSET TWO
        MOV [DI],AX
        MOV AH,4CH
        INT 21H
CODE ENDS
END START
