;the 8-bit data lines are connected
;to the leds through an output
;latch addresses at 40H



MVI A,00H ;ola ta leds svista
OUT 40H ;

MAIN: MVI A,40H;L0 anammeno
OUT 40H
CALL DISPLAY 
CALL DELAY
MVI A,02H;L1 anammeno
OUT 40H 
CALL DISPLAY
CALL DELAY
MVI A, 04H;L2 anammeno
OUT 40H 
CALL DISPLAY
CALL DELAY
MVI A, 08H;L3 anammeno
OUT 40H 
CALL DISPLAY
CALL DELAY
MVI A, 10H;L4 anammeno
OUT 40H 
CALL DISPLAY
CALL DELAY
MVI A, 20H;L5 anammeno
OUT 40H 
CALL DISPLAY
CALL DELAY
MVI A, 40H;L6 anammeno
OUT 40H 
CALL DISPLAY
CALL DELAY
MVI A,80H;L7 anammeno
OUT 40H 
CALL DISPLAY
CALL DELAY
JMP MAIN


DISPLAY: RET

;delay 1 sec
DELAY: 	MVI B,  0FFH
LABEL1:	MVI D, 0FFH
LABEL2:	DCR D
	JNZ LABEL2
	DCR B
	JNZ LABEL1		
	RET   



HLT