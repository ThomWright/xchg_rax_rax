; Replaces rax with sign of contents:
;   positive = 1
;   zero = 0
;   negative = -1

neg      rax
sbb      rax, rax
neg      rax

; CF : Carry Flag.
; Set if the last arithmetic operation carried (addition) or borrowed (subtraction) a bit beyond the size of the register.
; This is then checked when the operation is followed with an add-with-carry or subtract-with-borrow to deal with values too large for just one register to contain.

; neg - two's complement negation
;   IF DEST = 0
;       THEN CF ← 0;
;       ELSE CF ← 1;
;   FI;
;   DEST ← [– (DEST)]

; sbb - integer subtraction with borrow
;   DEST ← (DEST – (SRC + CF));

; Examples

; rax = 5
; neg -> -5 (CF = 1)
; sbb -> -1
; neg -> 1 (CF = 1)

; rax = -5
; neg -> 5 (CF = 1)
; sbb -> 1
; neg -> -1 (CF = 1)

; rax = 0
; neg -> 0 (CF = 0)
; sbb -> 0
; neg -> 0 (CF = 0)
