          
org 100h
include 'emu8086.inc'  

printn "Enter a string"
lea di,buffer
mov dx,SIZE
call get_string     

printn      
printn "Original string is"
mov si,di
call print_string

        
printn
printn "b)"
printn "Result is"
mov bx,di
mov ah,0Eh



print_loop:
    mov al, [bx]   ; Load the value at the memory location pointed by BX into AL
    cmp al, 0      ; Compare AL with 0    
    je  print_done  ; If AL is 0, jump to the end of the printing 
        

 
 
 ; part b)    
    ; Encode lowercase
    cmp al, 61h
    jge lower1:
    
    ; Encode uppercase 
    cmp al, 41h
    jge upper1:
    jl c

  
 
    here:
    mov al, cl 
 
 ; part c)    
    ; pass non-character letter  
    c: 
    mov [dx], al
    INC dx
    
    
    
    
    
    
    
    ;int 10h         ; Call BIOS interrupt 10h to print the character in AL to the screen
    inc bx         ; Move to the next memory location
    jmp print_loop ; Jump back to the beginning of the loop
       
print_done: 



print_inverse:  
    mov al, [dx]   ; Load the value at the memory location pointed by BX into AL
    cmp al, 0      ; Compare AL with 0   
    je  print_inverse_done  ;
    int 10h         ; Call BIOS interrupt 10h to print the character in AL to the screen
    dec dx         ; Move to the next memory location
    jmp print_inverse ; Jump back to the beginning of the loop                                   
                                       


print_inverse_done:    
  


hlt                
   
temp db 3000h
buffer DB SIZE DUP(?)
SIZE EQU 20 
MAGIC1 EQU 9Bh  
MAGIC2 EQU DBh
      

define_get_string
define_print_string 
         
; condition to encode uppercase letters 
upper1:
    cmp al, 5Ah
    jle upper2 
    jg c ; ; if al is not a character, jump to c to print it
    

upper2:   
   
   mov cl, MAGIC1
    sub cl, al  
    jmp here 


; condition to encode lower case letters
lower1: 
  cmp al, 7Ah
  jle lower2
  jg c  ; if al is not a character, jump to c to print it
  



lower2:
   mov cl, 61h   ;  plus a and z in hex to create the magic number to encode
    add cl, 7ah
    sub cl, al 
    jmp here

end
