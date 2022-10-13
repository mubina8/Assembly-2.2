.MODEL SMALL
.STACK 100H
.DATA 

MSG1 DB 'ENTER FIRST NUMBER:$'
MSG2 DB 0DH,0AH,'ENTER SECOND NUMBER:$' 
MSG3 DB 0DH,0AH,'NUMERS ARE:'
VAR1 DB 0DH,20H ?
VAR2 DB ?,'$'
MSG4 DB 0DH,0AH,'SUM IS:' 
BYTE1 DB ?,'$' 

.CODE
MAIN PROC 
    
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL 
    MOV VAR1,BL
    
    
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV CL,AL 
    MOV VAR2,CL 
    
    
    ADD BL,CL 
    SUB BL,30H
    MOV BYTE1,BL  
    
    LEA DX,MSG3
    MOV AH,9
    INT 21H
    
    LEA DX,MSG4
    MOV AH,9
    INT 21H 
     
    
    MOV AH,4CH
    INT 21H
    
    END MAIN


