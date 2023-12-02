 INCLUDE "EMU8086.INC"
 ORG 100h
 MOV AL, 7Ah
 CMP AL, 41h
 JGE d1
 PRINT "NOT A LETTER"
 HLT
 
 
 
 
d1: 
    CMP AL, 5Ah
    JLE d2
    CMP AL, 61h
    JGE d3
    PRINT "NOT A LETTER"
    HLT
    
    
    
    
    
ret  
 

d2: 
  ADD AL, 20h   

ret       

d3: 
    CMP AL,7Ah
    JLE d4 
    PRINT "NOT A LETTER"
    HLT
    
    
ret       



d4: 
    SUB AL, 20h


ret 