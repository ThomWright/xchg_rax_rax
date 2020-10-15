; Two different ways to negate two's complement numbers, results in original number

not      rax
inc      rax
neg      rax

; -2 ->  1 ->  2 -> -2
; -1 ->  0 ->  1 -> -1
; 0  -> -1 ->  0 ->  0
; 1  -> -2 -> -1 ->  1
; 2  -> -3 -> -2 ->  2
