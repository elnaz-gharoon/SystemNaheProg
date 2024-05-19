; ALP for seven segment display 

            ORG 0H
            LJMP 100H

            ORG 50H 
            DB 3FH, 6H, 5BH, 4FH, 66H, 6DH, 7DH, 7H, 7FH, 6FH, 77H, 7CH, 39H, 5EH, 79H, 71H;

            ;MAIN PROGRAM 
            ORG 100H
  START:    mov r7, #16             ; Counter to count 16 HEX NUMBER
            MOV P0, #0              ; PORT 0 AS OUTPUT PORT
            MOV DPTR, #50H          ;POINTER IS LOADED WITH STARTING ADDRESS OF HEX NUMBERS 

  BACK:     CLR A
            MOVC A,   @A+DPTR 
            mov P0, A
            INC DPTR
            ACALL DELAY
            DJNZ R7, BACK
            SJMP START

            ;SUBROUTINE FOR A SMALL DELAY
  DELAY:    MOV R1, #5
  WAIT1:    MOV R2, #250
  WAIT:     DJNZ R2, WAIT
            DJNZ R1, WAIT1
            RET
            END 
            
  
