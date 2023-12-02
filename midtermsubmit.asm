                   INCLUDE "EMU8086.INC"
ORG 100h   


MOV AX, 0B800H 
MOV DS, AX  
     
   
MOV DL, start_character
MOV BX, POS   
MOV DH, COLOR 
    
    
CMP CX, 0
JE loop_start    
 
; Add a loop here
loop_start:
    CMP DL, end_character 
    JG loop_end

    MOV [BX], DX
    ADD BX, SPACE   
      
  
    ADD DL, INTERVAL   
    
     CMP DH, RED
  
    JNE if2:
    JE if1: 
      exit:
    JMP loop_start

loop_end:


INT 20h ; Added INT 20h to properly terminate the program.

         
          
          
COLOR EQU 00000001B   ; Green text on BLACK background
SPACE EQU 4     ; Move to the next position (2 bytes per space)
POS EQU 160   ; Position to the start of the second line
start_character EQU 'A'    ; Start character         
end_character EQU 'z'    ; End lowercase character 
end_character2 EQU 'Z'    ; End uppercase character
INTERVAL EQU 1  ; Specify the next letter in the ASCII sequence  
RED EQU 00001100B  
BLUE EQU 00000001B
     
if1:   
    
 MOV DH, BLUE
 SUB DL,  32   
  CMP DL, end_character2 
    JG loop_end
 JMP exit

if2: 
 MOV DH, RED  
 ADD DL, 32

  
 JMP exit
