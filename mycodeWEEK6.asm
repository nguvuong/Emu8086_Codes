                                           
                                         
 ORG 100h
 MOV AL, var1
  SHL AL, 1
  INC AL  
  push AX
  MOV AL, var1 
  DEC AL                    
  SHL AL, 2    
  INC AL
  POP BX
  MUL BX
  
  PUSH AX
  
  MOV BL, var1
  DEC BL
  MOV AL, var1 
  SUB AL, BL
  SHR AL, 1
  
  MOV BL, AL 
  POP AX
  
  DIV BL
  
 PUSH AX
 POP CX
  
MOV AX, 0B800H 
MOV DS, AX  
MOV CH, 00010111B 
MOV BX, 0000
MOV [BX], CX
 
RET 
 var1 DB 4      
RET
