	.global _start

_start:
	MOV  R1, #5
	MOV  R2, #20
	MOV  R3, #10
	MLA R0, R1, R2, R3  @ R0 = (R1 * R2) + R3 [MuLtiply with Accumulate]

	MOV  R7, #1
	SWI  0
