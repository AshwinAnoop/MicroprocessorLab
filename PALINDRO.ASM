ASSUME CS:CODE,DS:DATA
DATA SEGMENT
        NUM DB "12321$"
        REV DB ".....$"
        MSG1 DB "NUMBER $"
        MSG2 DB " IS PALINDROME $"
        MSG3 DB " IS NOT A PALINDROME $"
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

CHECKPAL:
        LEA SI,REV
        LEA DI,NUM
        DEC DI
        MOV CX,5
        CHECKING:
                INC DI
                LODSB
                CMP [DI],AL
                JNE FAILED
                LOOP CHECKING
                DISPLAY MSG2
                JMP CHECKED

        FAILED:
                DISPLAY MSG3

CHECKED:
        MOV AH,4CH
        INT 21H
CODE ENDS
END START
