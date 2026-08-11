	.text
	; Every accumulator modifier the disassembler has a name for.  Each must assemble to an
	; encoding that prints back as the SAME mnemonic -- UDEC/SDEC/USUB/SSUB and their H variants
	; used to come back as UACC/SACC/UADD/SADD because the parser never set SUB_BIT.
	v32mov -, HY(20,0) UACC
	v32mov -, HY(20,0) UDEC
	v32mov -, HY(20,0) SACC
	v32mov -, HY(20,0) SDEC
	v32mov -, HY(20,0) UADD
	v32mov -, HY(20,0) USUB
	v32mov -, HY(20,0) SADD
	v32mov -, HY(20,0) SSUB
	v32mov -, HY(20,0) UACCH
	v32mov -, HY(20,0) UDECH
	v32mov -, HY(20,0) SACCH
	v32mov -, HY(20,0) SDECH
	v32mov -, HY(20,0) UADDH
	v32mov -, HY(20,0) USUBH
	v32mov -, HY(20,0) SADDH
	v32mov -, HY(20,0) SSUBH
	; CLRA is orthogonal and combines with any of them.
	v32mov -, HY(20,0) CLRA UACC
	v32mov -, HY(20,0) CLRA UDEC
	; #134: the same acc bits WITHOUT an ENA accumulator op (bare CLRA/WBA/SUB/SIGN/HIGH and
	; combinations) used to be silently dropped by the disassembler; they must now print and
	; round-trip.  CLRA WBA is the firmware `v16mov -,0' combination.
	v32mov -, HY(20,0) CLRA
	v32mov -, HY(20,0) WBA
	v32mov -, HY(20,0) SUB
	v32mov -, HY(20,0) SIGN
	v32mov -, HY(20,0) HIGH
	v32mov -, HY(20,0) CLRA WBA
	v32mov -, HY(20,0) CLRA HIGH SIGN WBA SUB
	; #134: SRU funcs 2/4/6 (max2/max4/max6) used to print but not parse.
	v32mov -, HY(20,0) max2 r0
	v32mov -, HY(20,0) max4 r7
	v32mov -, HY(20,0) max6 r3
