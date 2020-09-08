				AREA OneBits,CODE,READONLY
				ENTRY		
				
				MOV		R4,#101		; X=1101
				MOV		R12,#-1			; J=-1 Counter
FoundOne		ADD		R12,R12,#1		; J++
NotEmpty		MOVS	R4,R4,LSR#1		; Shift Left once
				BCS		FoundOne
				CMP		R4,#0			;Is X = 0
				BNE 	NotEmpty
				
STOP			B		STOP			; INFINITE LOOP

				END