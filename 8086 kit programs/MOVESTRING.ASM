MOV SI,2000
MOV DI,4000
MOV CX,0002
MOV AL,[SI]
MOV [DI],AL
INC SI
INC DI
DEC CX
JNZ STEP4
HLT