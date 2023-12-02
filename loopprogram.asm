INCLUDE "EMU8086.INC"
ORG 100h 
MOV ax, 0
MOV cx, 5

back: 
    ADD ax, cx
      PRINT '1'
    LOOP back       
    
  
    HLT