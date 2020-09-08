				AREA hw3,CODE,READONLY
				ENTRY
				
				SUB		R5,R5,R5	; S=0
				SUB		R6,R6,R6	; X=0
				ADD		R12,R5,R5	; I=0
LOOP			MUL		R6,R12,R12	; X=I*I
				ADD		R5,R5,R6	; S=S+X
				ADD		R12,R12,#1	; I=I+1
				CMP		R12,#10		; IS I=10
				BLE		LOOP		; IS J !=X LOOP
				
STOP			B		STOP		; INFINITE LOOP

				END
					
					
					
					
					
					