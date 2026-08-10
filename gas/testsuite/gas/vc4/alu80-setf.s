	.text
	; #127 regression: SETF on a vector ALU op with a ROW-B (vector-register) operand promotes the
	; encoding to 80-bit (Vop 0x3d->0x3f, byte1 bit3 set) and MUST emit the full 10 bytes -- the
	; 6-byte mnemonic word plus the 4-byte aux word.  A truncated (6-byte) emission here is the
	; under-emit #127 was filed for; it never actually happened -- that report was a `grep '\tv'`
	; on objdump output dropping the aux-word continuation line.  This test has teeth in BOTH
	; directions: the row-B SETF forms must be 10 bytes, and the 48-bit controls must stay 6.
	v32add HY(20,0),HY(10,0),HY(12,0) SETF
	v32add HY(20,0),-,HY(12,0) SETF
	v16add HX(20,0),HX(10,0),HX(12,0) SETF
	; CONTROLS -- these stay genuinely 48-bit / 6 bytes:
	;   SETF with an IMMEDIATE B has a real 48-bit encoding (byte1 0xf7, Vsetf48 bit38);
	;   a row-B op with no SETF is a plain 48-bit form.
	v32add HY(20,0),-,0x7 SETF
	v32add HY(20,0),HY(10,0),HY(12,0)
