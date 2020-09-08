				AREA DOUBLEJ,CODE,READONLY
				ENTRY
				
				SUB		R6,R6,R6	; y=0
				SUB		R12,R12,R12	; J=0
				ADD		R7,R7,#6	; N=6
LOOP			ADD		R6,R6,R12	; Y=Y+J
				ADD		R6,R6,R12	; Y=Y+J
				ADD		R12,R12,#1	; J=J+1
				CMP		R6,#5		; IS Y=X
				BLE		LOOP		; IS Y<X LOOP
				
STOP			B		STOP		; INFINITE LOOP

				END
					
					