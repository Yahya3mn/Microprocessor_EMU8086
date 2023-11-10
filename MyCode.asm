; multi-segment executable file template.

data segment
    
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:  

   MOV AX,0000H
   MOV BX,0FF00H
   MOV CX,0000H
   MOV DX,0000H
   MOV AX,16
   MOV AX,0016H
   MOV BL,20
   MOV BH,45
   MOV CX,0024H
   MOV DX,35
   MOV AH,16H
   MOV AX,20
   MOV AX,20H
   MOV CX,00H
   MOV DX,35
   MOV BX,16
   MOV CX,5H
   ADD AX,5
   ADD BX,15H
   ADD CX,DX
   SUB AX,13
   SUB AX,13H
   SUB DX,AX
   INC CH
   DEC CX
   INC DX
    
    

    
ends

end start ; set entry point and stop the assembler.
