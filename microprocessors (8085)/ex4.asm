;the 8-bit data lines are connected
;to the leds through an output
;latch addressed at 40H

MVI A,00H ;ola ta leds svista
OUT 40H ;eksodos port A

MAIN: MVI A,40H;L0 anammeno
OUT 40H 
CALL DELAY0 ;synoliki kathysterisi 0.5 sec
MVI A, 04H;L2 anammeno
OUT 40H 
CALL DELAY2 ;synoliki kathysterisi 2 sec

MVI A, 10H;L4 anammeno
OUT 40H 
CALL DELAY4;synoliki kathysterisi 4 sec

MVI A, 40H;L6 anammeno
OUT 40H 
CALL DELAY6 ;synoliki kathysterisi 6 sec

MVI A,80H;L7 anammeno
OUT 40H 
CALL DELAY7 ;synoliki kathysterisi 7 sec

MVI A, 20H;L5 anammeno
OUT 40H 
CALL DELAY5 ;synoliki kathysterisi 5 sec

MVI A, 08H;L3 anammeno
OUT 40H 
CALL DELAY3 ;synoliki kathysterisi 3 sec

MVI A,02H;L1 anammeno
OUT 40H 
CALL DELAY1 ;synoliki kathysterisi 1 sec
JMP MAIN


;------DELAY LOOPS-------------------
;delay 0,5 sec
DELAY0:	MVI B,  0FFH
LABEL1:	MVI D, 07FH
LABEL2:	DCR D
	JNZ LABEL2
	DCR B
	JNZ LABEL1		
	RET

;delay 1 sec
DELAY1:	MVI B,  0FFH
LABEL3:	MVI D, 0FFH
LABEL4:	DCR D
	JNZ LABEL4
	DCR B
	JNZ LABEL3
	DCR C
	JNZ DELAY1		
	RET

;delay 2sec
DELAY2:  MVI C, 02
LABEL5: MVI D, 0FFH
LABEL6:	MVI E, 0FFH
LABEL7:	DCR E
	JNZ LABEL7
	DCR D
	JNZ LABEL6		
	DCR C
	JNZ LABEL5
	RET

;delay 3sec
DELAY3:  MVI C, 03
LABEL8:  MVI D, 0FFH
LABEL9:	MVI E, 0FFH
LABEL10: DCR E
	JNZ LABEL10
	DCR D
	JNZ LABEL9		
	DCR C
	JNZ LABEL8
	RET

;delay 4sec
DELAY4:  MVI C, 04
LABEL11: MVI D, 0FFH
LABEL12: MVI E, 0FFH
LABEL13: DCR E
	JNZ LABEL13
	DCR D
	JNZ LABEL12		
	DCR C
	JNZ LABEL11
	RET

;delay 5sec
DELAY5:  MVI C, 05
LABEL14: MVI D, 0FFH
LABEL15: MVI E, 0FFH
LABEL16: DCR E
	JNZ LABEL16
	DCR D
	JNZ LABEL15		
	DCR C
	JNZ LABEL14
	RET

;delay 6sec
DELAY6:  MVI C, 06
LABEL17: MVI D, 0FFH
LABEL18: MVI E, 0FFH
LABEL19: DCR E
	JNZ LABEL19
	DCR D
	JNZ LABEL18		
	DCR C
	JNZ LABEL17
	RET

;delay 7sec
DELAY7:  MVI C, 07
LABEL20: MVI D, 0FFH
LABEL21: MVI E, 0FFH
LABEL22: DCR E
	JNZ LABEL22
	DCR D
	JNZ LABEL21		
	DCR C
	JNZ LABEL20
	RET
;--------END OF DELAY LOOPS---------


HLT
