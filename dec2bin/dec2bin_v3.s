/**** Write decimal as binary string ****/

	.global _start

_start:
	MOV R6, #215
	MOV R10, #1
	MOV R9, R10, LSL #31	@ Mask
	LDR R1, =string

_bits:
	TST R6, R9	@ Test bit by ANDing with mask. Set Z=1 if bit not set.
    	MOVEQ R0, #48
    	MOVNE R0, #49
	STR R0, [R1]
	BL _write	@ Branch and Link stores address of next instruction in Link Register

	MOVS R9, R9, LSR #1
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
	BX LR       @ Branch Exchange
	 
.data
string:
	.ascii " "
