/* Add two 64-bit numbers */

	.global _start

_start:
	MOV  R1, #0xFFFFFFFF	@ lo half of number 1
	MOV  R2, #0xFFFFFFFF 	@ hi half of number 1

	MOV  R3, #0xFFFFFFFF 	@ lo half of number 2
	MOV  R4, #0xFFFFFFFF 	@ hi half of number 2

	ADDS R0, R1, R3		@ results in carry flag being set in CPSR
	ADCS R6, R2, R4		@ carry from addition of lo bits taken into account

	MOV  R7, #1
	SWI  0
