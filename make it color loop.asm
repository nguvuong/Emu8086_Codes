                                                                              
                                                                              
                                                                              
 INCLUDE "EMU8086.INC"
 ORG 100h
 MOV AX, 0B800H 
 MOV DS, AX 
 MOV CL, 'A'
 MOV CH, 00010110B ; CAN CHANGE YOUR COLOR, 4 grant? yellow? black? white?  
 MOV BX, 15EH
 MOV [BX], CX
 RET 
 
 ret 