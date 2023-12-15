Code Segment
Start:

;a)
    MOV AX, -358 
    MOV BX, 4
    MUL BX
    MOV CX,AX
    MOV AX,-358
    IMUL BX
    
    
;b)
    MOV AL,-117
    CBW
    MOV BL,5
    IDIV BL

    
;c)
    MOV AL,-103
    CBW
    MOV BL,3
    IDIV BL
    

;d)
    MOV DX,0
    MOV AX,-151
    MOV BX,4
    IDIV BX   
    
    