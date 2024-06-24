;-----------------------------------------------
;   DISPLAY: steuert die 4x7 Segmentanzeige
;-----------------------------------------------
display:
mov P1, R0
clr P0.0
setb P0.0

mov P1, R1
clr P0.1
setb P0.1

mov P1, R2
clr P0.2
setb P0.2

mov P1, R3
clr P0.3
setb P0.3

ret

; F #0Ah
; A #0Bh
; I #01h
; L #0Ch
;
; S #05h
; U #0Dh
; C #0Eh
;-------------------------------------------------
; TABLE: Datenbank der 7-Segment-Darstellung
;-------------------------------------------------
org 300h
displayDB:
db 11000000b
db 11111001b, 10100100b, 10110000b
db 10011001b, 10010010b, 10000010b
db 11111000b, 10000000b, 10010000b
db 10001110b, 10001000b, 11000111b
db 11000001b, 11000110b

end
            
  
