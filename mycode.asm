    INCLUDE "EMU8086.INC"
org 100h

MOV AX, 3
Label1: 
SUB AX,1 
CMP AX,1 
JGE Label1
HLT
    
ret