MOV AX,0002H
MOV BX,0003H
ADD AX,BX
MOV [1400],AX   // ANY ADDRESS CAN BE USED INSTEAD OF 1400
HLT