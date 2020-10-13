; Flips a bit.
; I feel like I'm failing to understand the significance of this one.

xor      al,0x20

; al - 8-bit accumlator register
; 0x20 = 32 = 0b0010_0000
;                 ^ this bit is always flipped

; al =  0 -> 32
;       1 -> 33
;      31 -> 63
;      32 -> 0
;      33 -> 1
;      63 -> 31
;      64 -> 96
;      65 -> 97
;      95 -> 127
;      96 -> 64
; ...

; out
; |     /
; |    /
; |        /
; |       /
; | /
; |/
; |   /
; |  /
; |--------- in
