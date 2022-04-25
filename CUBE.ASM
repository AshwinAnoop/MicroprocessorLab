ASSUME CS:CODE,DS:DATA
DATA SEGMENT
        A DW 0003H
        SQ DW 01 DUP(?)
        CU DW 01 DUP(?)
DATA ENDS
CODE SEGMENT
START:
        MOV AX,DATA
        MOV DS,AX
        MOV AX,A
        MOV BX,A
        MUL BX
        MOV DI,OFFSET SQ
        MOV [DI],AX
        MUL BX
        MOV DI,OFFSET CU
        MOV [DI],AX
        MOV AX,4CH
        INT 21H
CODE ENDS
END START
