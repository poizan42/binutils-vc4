#objdump: -dr
#name: vector multiply family assembles + round-trips (#130)
# The 18 silicon-measured vector-multiply forms (Vaop 48..61 + mul32 at Vawidth=1). #130 was a
# misdiagnosis (the real mnemonics need a signedness suffix); this locks the family in.

.*:     file format .*


Disassembly of section \.text:

00000000 <\.text>:
   0:	c0 f5 20 a1 05 52 	vmulhn\.ss HX\(4,32\),HX\(5,0\),HX\(5,0\)
   6:	80 f5 e1 80 12 42 	vmull\.ss HX\(3,0\),HX\(20,0\),HX\(18,0\)
   c:	80 f5 20 85 0c a2 	vmull\.ss HX\(20,0\),HX\(10,0\),HX\(12,0\)
  12:	88 f5 20 85 0c a2 	vmulls\.ss HX\(20,0\),HX\(10,0\),HX\(12,0\)
  18:	90 f5 20 85 0c a2 	vmulm\.ss HX\(20,0\),HX\(10,0\),HX\(12,0\)
  1e:	98 f5 20 85 0c a2 	vmulms\.ss HX\(20,0\),HX\(10,0\),HX\(12,0\)
  24:	a0 f5 20 85 0c a2 	vmulhd\.ss HX\(20,0\),HX\(10,0\),HX\(12,0\)
  2a:	a8 f5 20 85 0c a2 	vmulhd\.su HX\(20,0\),HX\(10,0\),HX\(12,0\)
  30:	b0 f5 20 85 0c a2 	vmulhd\.us HX\(20,0\),HX\(10,0\),HX\(12,0\)
  36:	b8 f5 20 85 0c a2 	vmulhd\.uu HX\(20,0\),HX\(10,0\),HX\(12,0\)
  3c:	c0 f5 20 85 0c a2 	vmulhn\.ss HX\(20,0\),HX\(10,0\),HX\(12,0\)
  42:	c8 f5 20 85 0c a2 	vmulhn\.su HX\(20,0\),HX\(10,0\),HX\(12,0\)
  48:	d0 f5 20 85 0c a2 	vmulhn\.us HX\(20,0\),HX\(10,0\),HX\(12,0\)
  4e:	d8 f5 20 85 0c a2 	vmulhn\.uu HX\(20,0\),HX\(10,0\),HX\(12,0\)
  54:	e0 f5 20 85 0c a2 	vmulhdt\.ss HX\(20,0\),HX\(10,0\),HX\(12,0\)
  5a:	e8 f5 20 85 0c a2 	vmulhdt\.su HX\(20,0\),HX\(10,0\),HX\(12,0\)
  60:	a0 f7 30 c5 0c a3 	vmul32\.ss HY\(20,0\),HY\(10,0\),HY\(12,0\)
  66:	a8 f7 30 c5 0c a3 	vmul32\.su HY\(20,0\),HY\(10,0\),HY\(12,0\)
  6c:	b0 f7 30 c5 0c a3 	vmul32\.us HY\(20,0\),HY\(10,0\),HY\(12,0\)
  72:	b8 f7 30 c5 0c a3 	vmul32\.uu HY\(20,0\),HY\(10,0\),HY\(12,0\)
