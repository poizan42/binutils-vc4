#objdump: -dr
#name: {wide} pseudo-prefix forces + round-trips the 80-bit vector form (#125/#132/#133)
# {wide} forces the 80-bit encoding; the disassembler prints {wide} only on a NARROWABLE 80-bit
# form.  Covers omit-A (vmov), immediate and ld/st families, the shared +rN addend, and (#133) a
# canonical absent (-) FIRST operand in the D slot (3-reg/omit-A) or A slot (stores).  Negative
# controls (imm>63, disagreeing addends, a predicated or post-increment ld) must NOT be marked.

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
  2e:	00 fe 38 c5 0a 03 	\{wide\} v32mov HY\(20,0\),HY\(10,0\)
  34:	c0 f3 3c 00 
  38:	00 ff 30 c5 05 a4 	\{wide\} v32add HY\(20,0\),HY\(10,0\),5
  3e:	c0 f3 00 00 
  42:	00 fd 60 80 20 14 	\{wide\} v16add HX\(1,0\),HX\(1,0\),32 IFNZ
  48:	c0 f3 00 60 
  4c:	00 ff 30 c5 0c a3 	\{wide\} v32add HY\(20,0\)\+r3,HY\(10,0\)\+r3,HY\(12,0\)\+r3
  52:	c0 30 0c 00 
  56:	80 fc 64 19 3e 04 	\{wide\} v16and V\(32,5\),VX\(0,1\)\+r1,62
  5c:	41 f0 00 00 
  60:	90 fc 64 90 20 04 	\{wide\} v16eor VX\(0,1\)\+r4,VX\(0,1\)\+r4,32 IFZ
  66:	01 41 00 40 
  6a:	20 fd 00 e0 02 00 	\{wide\} v16sub -,H\(0,0\),H\(2,0\)
  70:	c0 f3 3c 00 
  74:	00 fc 38 e0 20 02 	\{wide\} v16mov -,HX\(32,0\)
  7a:	c0 f3 3c 00 
  7e:	88 f8 38 e0 80 03 	\{wide\} v16st -,\(r0\)
  84:	c0 f3 00 00 
  88:	10 f8 38 c0 80 03 	\{wide\} v32ld HY\(0,0\),\(r2\)
  8e:	c0 f3 08 00 
  92:	90 f8 30 e0 80 03 	\{wide\} v32st HY\(0,0\),\(r2\)
  98:	c0 f3 08 00 
  9c:	10 f8 38 c0 80 0b 	\{wide\} v32ld HY\(0,0\),\(r2\) SETF
  a2:	c0 f3 08 00 
  a6:	00 ff 30 c5 64 a4 	v32add HY\(20,0\),HY\(10,0\),100
  ac:	c0 f3 00 00 
  b0:	00 ff 30 c5 0c a3 	v32add HY\(20,0\)\+r3,HY\(10,0\)\+r4,HY\(12,0\)
  b6:	00 31 3c 00 
  ba:	10 f8 38 c0 80 03 	v32ld HY\(0,0\),\(r2\) IFNZ
  c0:	c0 f3 08 60 
  c4:	10 f8 38 c0 80 03 	v32ld HY\(0,0\),\(r2\+=r3\)
  ca:	c0 f0 08 00 
