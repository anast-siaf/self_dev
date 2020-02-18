MVI D, 55 ;load register C with (55)hex

LXI H, 2500H; fortose ston H tin diefthinsi 2500H
	    ; to periexomeno tis einai o arithmos M
MOV B, M ;apothikefsi max
MOV C, M ;apothikefsi min

LOOP: MOV A,M ; fortose ton M ston Accumulator
CMP B; sygkrine me ton max
JC MIN ;an den einai o max pigaine sto MIN
MOV B,A ;an to periexomeno toy A einai to max apothikefse to ston B

MIN: CMP C ; sygkrine me min
JNC SKIP ;an den einai o min pigaine sto SKIP
MOV C,A; an to periexomeno toy A einai to min apothikefse to ston C

SKIP: INX H ;afkise to periexomeno toy H kata 1
DCR D ;meiose ton D kata 1
JNZ LOOP ;pigaine sto loop an D>0

LXI H, 2600H ;fortose ton H me tin timi 2600H
MOV M,B ; fortose stin 2600H ton max
MOV A,M
CALL DISPLAY
CALL DELAY

LXI H, 2700H;fortose ton H me tin timi 2700H
MOV M,C ;fortose stin 2700H ton min
MOV A,M
CALL DISPLAY
CALL DELAY



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