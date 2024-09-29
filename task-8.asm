	INP
	STA DIV
	INP
	STA COUNT
	LDA ZERO
	STA RESULT

	LDA COUNT
	BRZ NULL	
	LDA DIV
	BRZ NULL
	BRP LoopPos
	BRA LoopNeg 


LoopPos LDA COUNT 	; Loop for handling positive dividend
	BRP PosC
	BRA NegC
	 	
PosC	LDA RESULT	; Part of the loop for positive divisor
	ADD ONE
	STA RESULT
	LDA DIV
	SUB COUNT
	STA DIV
	BRZ NULL
	BRP LoopPos
	BRA NULL

NegC	LDA RESULT	; Part of the loop for negative divisor
	SUB ONE
	STA RESULT
	LDA DIV
	ADD COUNT
	STA DIV
	BRZ NULL
	BRP LoopPos
	BRA NULL


LoopNeg LDA COUNT	; Loop for handling negative dividend
	BRP NPosC
	BRA NNegC
	 	
NPosC	LDA RESULT	; Part of the loop for positive divisor
	SUB ONE
	STA RESULT
	LDA DIV
	ADD COUNT
	STA DIV
	BRP NULL
	BRA LoopNeg

NNegC	LDA RESULT	; Part of the loop for negative divisor
	ADD ONE
	STA RESULT
	LDA DIV
	SUB COUNT
	STA DIV
	BRP NULL
	BRA LoopNeg


NULL	LDA RESULT
	OUT
	HLT

DIV	DAT
COUNT	DAT
RESULT	DAT
ZERO	DAT 0
ONE	DAT 1
