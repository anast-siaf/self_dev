MVI A, 00H
OUT 40H
MVI D, 55 ;fortose ton register C me (05)hex (gia na pame apo 2500-2555)

LXI H, 2500H ;fortose ston H tin diefthinsi 2500H
	    ; to periexomeno tis einai o arithmos M
LOOP: MOV A,M ;fortose ton M ston A
OUT 40H
CALL DISPLAY; emfanise ton A sto data Field
CALL DELAY2
INX H ;afkise to periexomeno toy H kata 1
DCR D ;meiose ton D kata 1
JNZ LOOP ;pigaine sto loop an D>0




DISPLAY: RET

;delay 2,5sec
DELAY2:  MVI B, 02
        MVI C, 0FFH
LABEL1:	MVI E, 0FFH
LABEL2:	DCR E
	JNZ LABEL2
	DCR C
	JNZ LABEL1		
	DCR B
	JNZ DELAY0_5
	RET

DELAY0_5: MVI C,  0FFH
LABEL3:	MVI E, 07FH
LABEL4:	DCR E
	JNZ LABEL3
	DCR C
	JNZ LABEL4		
	RET   


HLT