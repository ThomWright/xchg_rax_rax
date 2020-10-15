; A min function
; rdx = min(rdx, rax)

sub      rdx,rax
sbb      rcx,rcx
and      rcx,rdx
add      rax,rcx

; sub
; The SUB instruction performs integer subtraction.
; It evaluates the result for both signed and unsigned integer operands and sets the OF and CF flags to indicate an overflow in the signed or unsigned result, respectively.

; rdx = rdx - rax
; rcx = rcx - (rcx + CF)
; rcx = rcx AND rdx
; rax = rax + rcx

; Example:

; Starting register values:
; rax =  1     2     1
; rdx =  0     0     5
; rcx =  0     0     0
;
; After each instruction:
; rdx = -1    -2     4
; rcx = -1    -1    -1
; rcx = -1    -2     4
; rax =  0     0     5 <- result is: min(rdx, rax)
