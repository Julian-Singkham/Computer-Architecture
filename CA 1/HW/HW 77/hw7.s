				AREA hw7,CODE,READONLY
				ENTRY
				
				SUB		R5,R5,R5		; SUM=0
				ADD		R12,R5,#20		; N=20
				MUL		R5,R12,R12,R12	; SUM=(X*X)+X
				LSR		R12,R12,#1		; SUM=SUM/2
				
STOP			B		STOP			; INFINITE LOOP

				END