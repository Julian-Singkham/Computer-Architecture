			AREA SUMN, CODE, READONLY
				
N			EQU		3
	
			ENTRY
			MOV		R4,#0		;	SUM=0
			MOV		R5,#1		;	J=1
LOOP		ADD		R4,R4,R5	;	SUM=SUM+J
			ADD		R5,R5,#1	;	J=J+1
			CMP		R5,#N		;	IF R5<=N
			BLE		LOOP		;	THEN BRANCH BACK TO LOOP
			
			LDR		R5,=3276	;	
			SUB		R2,R2,#320	;	
			CMP		R1,#65536	;	
			EOR		R4,R1,R6	;	
			
STOP		B		STOP		;	INFINTE LOOP
			END