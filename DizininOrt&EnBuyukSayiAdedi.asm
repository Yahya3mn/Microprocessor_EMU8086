DATA SEGMENT
    NUMBER DB 21, 42, 5, 17, 8, 9, 51, 12, 32, 3
    ORTALAMA DB ?
    BUYUK_SAYILARIN_ADEDI DW 0
ENDS

CODE SEGMENT
    ASSUME DS:DATA CS:CODE
START:
  MOV AX,DATA
  MOV DS,AX
  MOV ES,AX

  LEA SI,NUMBER

  MOV CX,10

  MOV AX,0
  MOV BX,0

DONGU:
  MOV AL,[SI]
  ADD BX,AX
  INC SI
  LOOP DONGU

  MOV ORTALAMA,BL
  SHR ORTALAMA,1

  LEA SI,NUMBER
  MOV CX,10

  MOV BX,0

DONGU2:
  MOV AL,[SI]
  CMP AL,ORTALAMA
  JG BUYUK
  JMP DEVAM

BUYUK:
  INC BX

DEVAM:
  INC SI
  LOOP DONGU2

  MOV BUYUK_SAYILARIN_ADEDI,BX

  MOV AH,4CH
  INT 21H

ENDS
    