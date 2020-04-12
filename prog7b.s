	.global _start

_start:
_read:
	MOV R0, #0	@ input stream
	MOV R2, #5 	@ Number of chars to read
	MOV R7, #3	@ Linux syscall number
	LDR R1, =hello  @ Address of string
	SWI 0		@ Software interrupt

_write:
	MOV R0, #1	@ Output stream is stdout
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
