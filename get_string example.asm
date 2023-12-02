      INCLUDE "EMU8086.INC"
ORG 100h  
            
MOV DX, 0B9B9H
STC

    MOV    CL,2

     RCR     DX, CL