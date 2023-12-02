include 'emu8086.inc'
org 100h  
lea si, myname
call PRINT_STRING   
ret

myname DB "Georg",0 
 
DEFINE_PRINT_STRING