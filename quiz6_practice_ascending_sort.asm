INCLUDE "EMU8086.INC"



; ascending sort 


MOV AL, 5 
MOV BL, 12

CMP AL, BL 
JL  d1
MOV AL, BL
PUSH AX
HLT




d1:   
PUSH AX
