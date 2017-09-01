
;              .org $A000-22
			.org	$e000
			
;****************************************
; Header for Atom emulator Wouter Ras
;		 .db "SDROM328        "
;		 .dw $A000
;		 .dw $A000
;		 .dw eind_asm-start_asm
;****************************************
start_asm:    
.include "math-lib.inc"
.include "atmmcdef.inc"
.include "macros.inc"
.include "int.inc"
.include "sd.inc"

end_asm:

; Fill the end of the rom with $FF
.res $efff-*, $FF
	RTS
eind_asm:
