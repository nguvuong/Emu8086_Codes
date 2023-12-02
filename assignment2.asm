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
    ADD AX, CX   

 
    
    
    JMP loop_start

loop_end:


INT 20h ; Added INT 20h to properly terminate the program.

ret 
             
          
          
COLOR EQU 00001100B   ; Red text on BLACK background
SPACE EQU 8     ; Move to the next position (2 bytes per space)
POS EQU 160     ; Position to the start of the second line
start_character EQU 'A'    ; Start character         
end_character EQU 'Z'    ; Start character 
INTERVAL EQU 2  ; Specify the next letter in the ASCII sequence  

