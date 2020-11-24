; Divide by 8, rounding to nearest integer

shr      rax,3 ; shift right
adc      rax,0 ; add with carry

; 8/8 = 1
; rax =  8 = 0b0000_1000
;     =  1 = 0b0000_0001 CF=0
;     =  1 = 0b0000_0001

; 10/8 = 1.25 rounds to 1
; rax = 10 = 0b0000_1010
;     =  1 = 0b0000_0001 CF=0
;     =  1 = 0b0000_0001

; 11/8 = 1.375 rounds to 1
; rax = 11 = 0b0000_1011
;     =  1 = 0b0000_0001 CF=0
;     =  1 = 0b0000_0001

; 12/8 = 1.5 rounds to 2
; rax = 12 = 0b0000_1100
;     =  1 = 0b0000_0001 CF=1
;     =  2 = 0b0000_0010

; 15/8 = 1.875 rounds to 2
; rax = 15 = 0b0000_1111
;     =  1 = 0b0000_0001 CF=1
;     =  2 = 0b0000_0010

; 16/8 = 2
; rax = 16 = 0b0001_0000
;     =  1 = 0b0000_0010 CF=0
;     =  2 = 0b0000_0010
