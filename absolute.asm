  INCLUDE "EMU8086.INC"
  MOV ax, -172 
  CMP ax, 0; 
  JGE pos 
  NEG ax
  PRINT 
  pos: 
    HLT
  