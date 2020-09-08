				AREA SquaredMinusOne,CODE,READONLY
				ENTRY
				
				SUB		R0,R0,R0	; y=0
				SUB		R12,R12,#1	; J=1
				ADD		R1,R1,#6	; N=6
LOOP			ADD		R0,R0,R12	; Y=Y+J
				ADD		R0,R0,R12	; Y=Y+J
				ADD		R12,R12,#1	; J=J+1
				CMP		R0,R1		; IS Y=N
				BLE		LOOP		; IS Y<N LOOP
				SUB		R0,R0,#1	; Y=Y-1
				
STOP			B		STOP		; INFINITE LOOP

				END
					
					