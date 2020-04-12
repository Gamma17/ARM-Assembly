	.global _start

_start:
	MOV R0, #1	@ Output stream
	MOV R2, #14 	@ Number of chars in string
	MOV R7, #4	@ Linux syscall number
	LDR R1, =hello  @ Address of string

	SWI 0		@ Software interrupt

_exit:
	MOV R7, #1
	SWI 0

.data
hello:
.ascii "Hello, World!\n"
