	INP
	STA A
	INP
	STA B
	INP
	STA C
	
	LDA A
	SUB B
	BRP MINB
	BRA MINA

MINB	LDA B
	SUB C
	BRP FINC
	BRA FINB

MINA	LDA A
	SUB C
	BRP FINC
	BRA FINA

FINA	LDA A
	OUT
	HLT
FINB	LDA B
	OUT
	HLT
FINC	LDA C
	OUT
	HLT

A	DAT
B	DAT
C	DAT
