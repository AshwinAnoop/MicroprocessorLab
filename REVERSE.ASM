ASSUME CS:CODE,DS:DATA
DATA SEGMENT
        NUM DB "12345$"
        REV DB ".....$"
        MSG1 DB "ENTER A NUMBER $"
        MSG2 DB " REVERSED NUMBER IS $"
DATA ENDS

DISPLAY MACRO MSG
        LEA DX,MSG
        MOV AH,09
        INT 21H
ENDM

CODE SEGMENT
START:
        MOV AX,DATA
        MOV DS,AX
        DISPLAY MSG1
        DISPLAY NUM
        LEA SI,REV
        LEA DI,NUM
        ADD DI,4
        MOV CX,5

REVERSE:
        MOV AL,[DI]
        MOV [SI],AL
        INC SI
        DEC DI
        LOOP REVERSE

        DISPLAY MSG2
        DISPLAY REV
        MOV AH,4CH
        INT 21H
CODE ENDS
END START
