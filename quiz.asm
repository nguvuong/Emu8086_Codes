INCLUDE "EMU8086.INC"
ORG 100h  

MOV AX, 2
ADD AX, 1
MOV BX, 2
MUL BX

MOV BX, 5
SUB BX, 1
SUB BX, 2

ADD AX, BX  


MOV AX, 0B800H 
MOV DS, AX 
MOV CL, '8' 
MOV CH, 00010111B 
MOV BX, 15EH
MOV [BX], CX
RET 

ret