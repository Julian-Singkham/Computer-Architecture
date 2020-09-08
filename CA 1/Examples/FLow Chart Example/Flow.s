				Area MAR18,CODE,READONLY
				ENTRY
				SUB		R4,R4,R4	; y=0
				ADD		R12,R4,#1	; j=1
				ADD		R0,R4,#8	; x=8
LOOP			ADD		R4,R4,R0	; y=y+x
				ADD		R12,R12,#1	; j=j+1
				CMP		R12,R12,#1	
				BNE
				
STOP			B
				END