;Assembly Language Program Syntax
;LabelName Mnemonic/opcode operands comments

.data 
InputMessage db 'Input a single character:$'
OutputMessage db 'Input character is:$'
.code 

BUBT PROc ; PROC menas Procedure
;Initialize data segment
MOV AX, @DATA
MOV DS, AX

;Print input message
MOV AH,9 ; AH=9
LEA DX, InputMessage ; LEA means Load Effective
                     ; Address
INT 33


;Input a single character from keyboard
MOV AH,1 ; AH=1
INT 21h ; INT means Interrupt
MOV BH,AL; BL= AL

;Print new line
MOV Ah,2
MOV Dl,10 ; 10 means new line
int 33   
MOV dl,13 ; 13 means Cursor return 
                   ;to left margin
int 21h

;Print input message
MOV AH,9 ; AH=9
LEA DX, OutputMessage ; LEA means Load Effective
                     ; Address
INT 33


;Print a single character
MOV AH,2 ; AH=2
MOV DL,BH ; DL=BH
INT 33
BUBT EndP ; ENDP means end procedure

END BUBT ; Exit from program