.data

message1 db 'VALOR A PAGAR: R$' 

.code
BUBT PROC 
    ;initialize data segment 
    MOV AX, @DATA
    MOV DS,AX
    ;input code number of the product
    MOV AH,1
    int 21h
    
    MOV AH,2
    MOV DL, 20h
    int 33
    MOV DL, 20h
    int 33 
    
    ;input number of units of product
    MOV AH,1
    int 21h
    MOV BL,AL
    SUB BL,30h; convert hexa to decimal
    
    MOV AH,2
    MOV DL, 20h
    int 33
    MOV DL, 20h
    int 33 
    ;input number as price per unit of product
    MOV AH,1
    int 21h
    MOV BH,AL
    SUB BH,30h; convert hexa to decimal
    
     
   ;print a new line
   
   MOV AH,2
   MOV DL,10
   int 21h
   MOV DL,13
   int 21h
   
     
     
    ;repeat same process for second product
    
     ;input code number of the product
    MOV AH,1
    int 21h
    
    MOV AH,2
    MOV DL, 20h
    int 33
    MOV DL, 20h
    int 33 
    
    ;input number of units of product
    MOV AH,1
    int 21h
    MOV CL,AL
    SUB CL,30h; convert hexa to decimal
    
    MOV AH,2
    MOV DL, 20h
    int 33
    MOV DL, 20h
    int 33 
    ;input number as price per unit of product
    MOV AH,1
    int 21h
    MOV CH,AL
    SUB CH,30h; convert hexa to decimal
    
    
    
    ;multiply
    
    MOV AX,0
    MOV AL,BL
    MUL BH
    
    MOV BL,AL
    ;ADD BL,30h;convert decimal to hexa
    
    
    MOV AX,0
    MOV AL,CL
    MUL CH
    
    MOV CL,AL
    ;ADD CL, 30h;;convert decimal to hexa
    
    
    ADD BL,CL
    ADD BL,30h  ;convert decimal to hexa
    
    
  ;print a new line
   
   MOV AH,2
   MOV DL,10
   int 21h
   MOV DL,13
   int 21h
   
   MOV AH,9
   LEA DX,message1
   int 21h 
   
   MOV AH,2
   MOV DL,24h
   int 21h
   
   MOV AH,2
   MOV DL,20h
   int 21h
   
   
   MOV AH,2
   MOV DL,30h
   int 21h
   
   MOV DL,BL
   int 21h
    
    
    BUBT ENDP
END BUBT