; Allows branching based on range

sub      rax,5  ; rax = rax - 5
cmp      rax,4  ; rax - 4

; The following flags are set in cmp (+ more):
;
; CF - Carry Flag. Set if the last arithmetic operation carried (addition) or borrowed (subtraction) a bit beyond the size of the register. This is then checked when the operation is followed with an add-with-carry or subtract-with-borrow to deal with values too large for just one register to contain.
; ZF - Zero Flag. Set if the result of an operation is Zero (0).
;
; jbe:
; Jump short if below or equal (CF=1 or ZF=1).
;
; If followed by a jbe instruction, this will jump when rax is between 5 and 9 inclusive.

; Example:
;
; rax = 10 ->  5 -> ( 1) CF=0,ZF=0
; rax =  9 ->  4 -> ( 0) CF=0,ZF=1
; rax =  8 ->  3 -> (-1) CF=1,ZF=0
; rax =  5 ->  0 -> (-4) CF=1,ZF=0
; rax =  4 -> -1 -> (-5) CF=0,ZF=0
