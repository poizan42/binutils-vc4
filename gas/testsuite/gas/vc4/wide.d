#objdump: -dr
#name: {wide} pseudo-prefix forces + round-trips the 80-bit vector form (#125)
# {wide} forces the 80-bit encoding; the disassembler prints {wide} only on a NARROWABLE 80-bit
# form (getacc SETF, or a no-mods ALU form).  A row-B SETF ALU form and a REP form are genuinely
# 80-bit-only and must NOT be marked.

.*:     file format .*


Disassembly of section \.text:

00000000 <\.text>:
   0:	00 fb 30 c5 00 0b 	\{wide\} vgetacc HY\(20,0\),HY\(0,0\),HY\(0,0\) SETF
   6:	c0 f3 3c 00 
   a:	00 f3 30 c5 40 03 	vgetacc HY\(20,0\),HY\(0,0\),HY\(0,0\) SETF
  10:	00 ff 30 c5 0c a3 	\{wide\} v32add HY\(20,0\),HY\(10,0\),HY\(12,0\)
  16:	c0 f3 3c 00 
  1a:	00 ff 30 c5 0c ab 	v32add HY\(20,0\),HY\(10,0\),HY\(12,0\) SETF
  20:	c0 f3 3c 00 
  24:	02 ff 30 c5 0c a3 	v32add HY\(20,0\),HY\(10,0\),HY\(12,0\) REP4
  2a:	c0 f3 3c 00 
