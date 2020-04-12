/**** Write decimal as binary string ****/

	.global _start

_start:
	MOV R6, #251
	MOV R10, #1
	MOV R9, R10, LSL #31	@ Mask
	LDR R1, =string

_bits:
	TST R6, R9	@ Test bit by ANDing with mask. Set Z=1 if bit not set.
	BEQ _print0	@ Branch if Z=1
	MOV R8, R6	@ ???
	MOV R0, #49	@ ASCII '1'
	STR R0, [R1]
	BL _write	@ Branch and Link stores address of next instruction in Link Register
	MOV R6, R8	@ ???
	BAL _noprint1	@ Branch Always

_print0:
	MOV R8, R6	@ ???
	MOV R0, #48
	STR R0, [R1]
	BL _write
	MOV R6, R8	@ ???

_noprint1:
	MOVS R9, R9, LSL #1
	BNE _bits	@ More work to do if Z not set after MOVS

_exit:
	MOV R7, #1
	SWI 0

_write:
	@ Address of string to write is stored in R1
	MOV R0, #1	@ stdout
	MOV R2, #1	@ one char
	MOV R7, #4	@ write
	SWI 0
	MOV PC, LR	@ Copy LR address to Progam Counter
	 
.data
string:
	.ascii " "
