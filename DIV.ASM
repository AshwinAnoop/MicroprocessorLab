ASSUME CS:CODE,DS:DATA
DATA SEGMENT
        A DW 0008H
        B DW 0002H
        QUO DW 01 DUP(?)
DATA ENDS
CODE SEGMENT
START:
        MOV AX,DATA
        MOV DS,AX
        MOV AX,A
        MOV BX,B
        DIV BX
        MOV DI,OFFSET QUO
        MOV [DI],AX
        MOV AH,4CH
        INT 21H
CODE ENDS
END START
