				AREA Squared,CODE,READONLY
				ENTRY
				
				SUB		R8,R8,R8	; y=0
				ADD		R4,R4,#5	; X=5
				ADD		R12,R12,#1	; J=1
LOOP			ADD		R8,R8,R4	; Y=Y+X
				ADD		R12,R12,#1	; j=j+1
				CMP		R12,#5		; IS J=X
				BLE		LOOP		; IS J !=X LOOP
				
STOP			B		STOP		; INFINITE LOOP

				END