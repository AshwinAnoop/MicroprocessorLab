//PROGRAM FOR LARGEST OF N NUMBERS

MOV CX,0003
MOV SI,1500
MOV AL,[SI]
INC SI
DEC CX
CMP AL,[SI]
JAE STEP11
MOV AL,[SI]
INC SI
DEC CX
JNZ STEP8
MOV [1400],AL
HLT