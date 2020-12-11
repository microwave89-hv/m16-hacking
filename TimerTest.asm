;==================== TIMER TEST V1.0 =====================
;
; 2020, microwave89-hv
;
;==========================================================

.include "m16def.inc"

;Init
	ldi		r16, 0b11000000	
	out		DDRD, r16				; Highest pins of PORTD are output
	out		PORTD, r16			; Highest pins of PORTD are high

loop0:
	jmp		loop0
