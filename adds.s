	.global _start

_start:
	MOV  R0, #50
	ADDS R0, R0, #60

	MOV  R7, #1
	SWI 0
