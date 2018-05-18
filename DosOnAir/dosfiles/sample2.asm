CSEG	SEGMENT
	ASSUME	CS:CSEG
START:	MOV	AH, 01H
	INT	21H
	CMP 	AL, '0'
	JB 	OTHER
	CMP 	AL, '9'
	JBE	NUM	; '0'~'9' IS NUMBER
	CMP 	AL, 'A'
	JB 	OTHER
	CMP	AL, 'Z'
	JBE	ALPHA	; 'A'~'Z'IS ALPHABET
	CMP 	AL, 'a'
	JB 	OTHER
	CMP	AL, 'z'	; 'a'~'z'
	JBE	ALPHA 
	JMP 	OTHER
NUM:	MOV	DL, 'D'
	JMP	OUTPUT
ALPHA:	MOV 	DL, 'L'
	JMP	OUTPUT
OTHER:	MOV	DL, 'O'
	JMP	OUTPUT
OUTPUT:	MOV 	AH, 02H
	INT 	21H
	MOV 	AH, 4CH
	INT 	21H
CSEG 	ENDS
	END 	START