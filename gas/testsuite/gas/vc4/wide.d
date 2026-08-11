#objdump: -dr
#name: {wide} pseudo-prefix forces + round-trips the 80-bit vector form (#125/#132)
# {wide} forces the 80-bit encoding; the disassembler prints {wide} only on a NARROWABLE 80-bit
# form.  #132 extends the marker to omit-A (vmov), immediate and ld/st families, and to the shared
# +rN addend across operands.  Negative controls (imm>63, disagreeing addends, a predicated or
# post-increment ld) are genuinely 80-bit-only and must NOT be marked.

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
  6a:	10 f8 38 c0 80 03 	\{wide\} v32ld HY\(0,0\),\(r2\)
  70:	c0 f3 08 00 
  74:	90 f8 30 e0 80 03 	\{wide\} v32st HY\(0,0\),\(r2\)
  7a:	c0 f3 08 00 
  7e:	10 f8 38 c0 80 0b 	\{wide\} v32ld HY\(0,0\),\(r2\) SETF
  84:	c0 f3 08 00 
  88:	00 ff 30 c5 64 a4 	v32add HY\(20,0\),HY\(10,0\),100
  8e:	c0 f3 00 00 
  92:	00 ff 30 c5 0c a3 	v32add HY\(20,0\)\+r3,HY\(10,0\)\+r4,HY\(12,0\)
  98:	00 31 3c 00 
  9c:	10 f8 38 c0 80 03 	v32ld HY\(0,0\),\(r2\) IFNZ
  a2:	c0 f3 08 60 
  a6:	10 f8 38 c0 80 03 	v32ld HY\(0,0\),\(r2\+=r3\)
  ac:	c0 f0 08 00 
