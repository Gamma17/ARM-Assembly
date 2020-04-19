	.global _start

_start:
	MOV  R1, #5
	MOV  R2, #20
	MULS R0, R1, R2

	MOV  R7, #1
	SWI  0
