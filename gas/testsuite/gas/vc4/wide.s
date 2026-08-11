	.text
	; #125: the leading `{wide}' pseudo-prefix forces the 80-bit encoding of a dual-width vector op,
	; and the disassembler prints `{wide}' back on a narrowable 80-bit form so it round-trips.
	;
	; getacc SETF: 48-bit by default; {wide} forces the 10-byte 80-bit form (narrowable: a 48-bit
	; SETF encoding exists, so the disassembler marks it {wide}).
	{wide} vgetacc HY(20,0),HY(0,0),HY(0,0) SETF
	vgetacc HY(20,0),HY(0,0),HY(0,0) SETF          ; control: narrows to the 48-bit form (no marker)
	; ALU no-mods: 48-bit by default; {wide} forces a narrowable 80-bit form (a 48-bit twin exists).
	{wide} v32add HY(20,0),HY(10,0),HY(12,0)
	; NEGATIVE controls -- must NOT be marked {wide}:
	;  * a row-B SETF ALU form is genuinely 80-bit-only (no 48-bit SETF for row-B, #127);
	;  * a REP form carries 80-bit-only content.
	v32add HY(20,0),HY(10,0),HY(12,0) SETF
	v32add HY(20,0),HY(10,0),HY(12,0) REP4
	; #132: the marker is general across the remaining dual-width families.
	; omit-A (vmov): a 48-bit twin exists, so {wide} forces a narrowable 80-bit form.
	{wide} v32mov HY(20,0),HY(10,0)
	; immediate B that fits uimm6 (0..63): narrowable, so marked.
	{wide} v32add HY(20,0),HY(10,0),5
	; immediate + predication: the 48-bit imm twin carries setf+predication, so an
	; imm form WITH a predicate is still narrowable and IS marked (#132/H1).
	{wide} v16add HX(1,0),HX(1,0),32 IFNZ
	; a shared +rN addend across every operand narrows via that SREG variant (#132/H3).
	{wide} v32add HY(20,0)+r3,HY(10,0)+r3,HY(12,0)+r3
	; a V-family A operand keeps its fine-x low bits in a field the 48-bit form carries,
	; so an immediate V-direction op with a +rN addend is narrowable (and marked).
	{wide} v16and V(32,5),VX(0,1)+r1,62
	{wide} v16eor VX(0,1)+r4,VX(0,1)+r4,32 IFZ
	; plain (rN) ld/st: narrowable; a lone SETF stays narrowable for ld (#132/H2).
	{wide} v32ld HY(0,0),(r2)
	{wide} v32st HY(0,0),(r2)
	{wide} v32ld HY(0,0),(r2) SETF
	; NEGATIVE controls -- forced 80-bit but must NOT be marked {wide}:
	;  * an immediate too big for uimm6 has no 48-bit spelling;
	{wide} v32add HY(20,0),HY(10,0),100
	;  * disagreeing +rN addends cannot map to one shared SREG;
	{wide} v32add HY(20,0)+r3,HY(10,0)+r4,HY(12,0)
	;  * a predicated ld has no 48-bit twin (48-bit ld carries only SETF);
	{wide} v32ld HY(0,0),(r2) IFNZ
	;  * a post-increment ld address is 80-bit-only.
	{wide} v32ld HY(0,0),(r2+=r3)
