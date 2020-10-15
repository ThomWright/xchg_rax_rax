; Flips the 5th bit.
; Apparently in ASCII this converts from upper to lower case and vice versa!

xor      al,0x20

; al - 8-bit accumlator register
; 0x20 = 32 = 0b0010_0000
;                 ^ this bit gets flipped

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
