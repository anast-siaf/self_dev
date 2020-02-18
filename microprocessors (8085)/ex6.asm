MVI A,00H
OUT 42H

MAIN: IN 41H;diavase tin katastasi diakoptwn
CPI 81H ;einai oi diakoptes 7 & 0 sto ON?
JZ PROC_1;An nai pigaine stin proti diadikasia
CPI 03H ;einai oi diakoptes 1 & 0 sto ON?
JZ PROC_2;an nai pigaine sti defteri diadikasia

JMP MAIN

PROC_1: MVI A, 0D0H ; L7,L6 & L4 anammena
OUT 42H; eksodos port B
CALL DELAY ;3sec kathysterisi

LXI H, 2400H;fortose ston H ti diefthinsi 2400H
MOV A, M ; fortose ton M ston Accumulator
OUT 42H;
JMP MAIN

PROC_2: MVI A, 11H
MVI B, 01H
ADD B
STA 2500H
LDA 2600H ;fortosi periexomenou thesis mnimis 2600H ston accumulator
XRA B ;XOR tou periexomenou tou B (01H) me ton accumulator
STA 2700H
CALL DISPLAY
JMP MAIN


DISPLAY: RET

;delay 3 sec
DELAY:  MVI C, 03
LABEL0: MVI D, 0FFH
LABEL1:	MVI E, 0FFH
LABEL2:	DCR E
	JNZ LABEL2
	DCR D
	JNZ LABEL1		
	DCR C
	JNZ LABEL0
	RET
	
HLT