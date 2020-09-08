; project:	may3
; date		may3, 2019
; author	Julian Singkham
; algorithm:
;
; int main()
; {
;	int S = 0;
;
;	s = sum(10);
;	wait(1);
; }
;
; int sum(int n)}
; {
;	int temp =0;
;	int i = 0;
;
;	do
; 	{
;	 temp = temp + i;
;	 i = i +1;
;	}while(i <= n);
;	return temp;
; }

		AREA	SubRoutine, CODE, READONLY
		ENTRY
MAIN	MOV		R4,#0		; int s=0
		MOV		R0,#10		; N =M 10, Setting up param 1
		BL		SUM			; SUM(10)
		MOV		R4,R0		; S=RETURN VALUE
STOP	B		STOP		; WHILE(1) INFINITE LOOP

SUM		MOV		R12,#0		; TEMP = 0
		MOV		R1,#0		; I = 0
SUML1	ADD		R12,R12,R1	; TEMP = TEMP + I
		ADD		R1,R1,#1	; I++
		CMP		R1,R0		; I = N
		BLE		SUML1		; LOOP AGAIN
		MOV		R0,R12		; RETRUN = TEMP
		MOV		PC,LR		; PC = RETURN ADDRESS
		
		END
