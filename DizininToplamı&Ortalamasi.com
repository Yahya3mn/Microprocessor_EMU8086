DATA SEGMENT
    SAYILAR DB 1,4,2,3,8,6,7,5,9
    
ENDS

CODE SEGMENT
    ASSUME DS:DATA CS:CODE
START:
    MOV AX,DATA
    MOV DS,AX
    
    LEA SI,SAYILAR
    MOV AH,9
    
    
    
    MOV AX,00
    MOV BL,9
    
    MOV CX,9
    LOOP1:
        ADD AL,SAYILAR[SI]
        INC SI
    LOOP LOOP1
    
    DIV BL
    
    

ENDS
END START