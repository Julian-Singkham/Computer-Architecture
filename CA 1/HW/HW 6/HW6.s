				AREA HW6,CODE,READONLY
				ENTRY
				
				SUB		R9,R9,R9		; X=0
				ADD		R12,R9,#10		; j=10
LOOP			ADD		R9,R9,R12,LSL#6	; X=X+(J*2^6)
				SUB		R12,R12,#1		; J=J-1
				CMP		R12,#0			; IS J=0
				BGT		LOOP			; IS J > 0 LOOP
				
STOP			B		STOP			; INFINITE LOOP

				END