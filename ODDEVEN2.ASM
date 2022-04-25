ASSUME CS:CODE,DS:DATA
DATA SEGMENT
        A EQU 0006H
        M1 DB "ODD$"
        M2 DB "EVEN$"
DATA ENDS
CODE SEGMENT
START:
        MOV AX,DATA
        MOV DS,AX
        MOV AX,A
        MOV BL,02
        DIV BL
        CMP AH,0
        JZ EVE
        JNZ ODD
        ODD:    LEA DX,M1
                MOV AH,09
                INT 21H
                MOV AH,4CH
                INT 21H
        EVE:   LEA DX,M2
                MOV AH,09
                INT 21H
                MOV AH,4CH
                INT 21H
CODE ENDS
END START
