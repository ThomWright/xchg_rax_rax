; As with 0x06, we end up with the same number again

inc      rax
neg      rax
inc      rax
neg      rax

; -2 -> -1 ->  1 ->  2 -> -2
; -1 ->  0 ->  0 ->  1 -> -1
;  0 ->  1 -> -1 ->  0 ->  0
;  1 ->  2 -> -2 -> -1 ->  1
;  2 ->  3 -> -3 -> -2 ->  2
