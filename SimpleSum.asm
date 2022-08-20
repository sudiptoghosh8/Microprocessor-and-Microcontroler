.data

message1 db 'SOMA = $' 

.code
BUBT PROC 
    ;initialize data segment 
    MOV AX, @DATA
    MOV DS,AX
   
    MOV AH,1
    int 21h 
    
    MOV BL,AL
   
    
    MOV AH,2
    MOV DL, 10
    int 33
    MOV DL, 13
    int 33 
     
    
    MOV AH,1
    int 21h
    MOV BH,AL
   
    
    MOV AH,2
    MOV DL, 10
    int 33
    MOV DL, 13
    int 33 
    
     
   
    
    

   
 
   
  ;Addition
  
  ADD BL,BH
  SUB BL,30H
   
   
   
   
     
   
     
   ;print a new line
   
   MOV AH,2
   MOV DL,10
   int 21h
   MOV DL,13
   int 21h
   
     
  
   
   ;print message
   MOV AH,9
   LEA DX,message1
   int 21h
   
    
 
   ;print space
   MOV AH,2
   MOV DL,20h
   int 21h
   
 
   ;print result
   MOV DL,BL
   int 21h
    
    
    BUBT ENDP
END BUBT