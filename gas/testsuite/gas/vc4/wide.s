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
