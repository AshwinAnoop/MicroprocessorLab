ASSUME CS:CODE,DS:DATA
DATA SEGMENT
        L DW 0002H
        B DW 0003H
        AREA DW 01 DUP(?)
        PERI DW 01 DUP(?)
DATA ENDS
CODE SEGMENT
START:
        MOV AX,DATA
        MOV DS,AX
        MOV AX,L
        MOV BX,B
        MUL BX
        MOV DI,OFFSET AREA
        MOV [DI],AX
        MOV AX,L
        MOV BX,B
        ADD AX,BX
        MOV BX,0002H
        MUL BX
        MOV DI,OFFSET PERI
        MOV [DI],AX
        MOV AH,4CH
        INT 21H
CODE ENDS
END START
