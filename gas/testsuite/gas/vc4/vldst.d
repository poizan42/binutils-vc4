#objdump: -dr
#name: 80-bit v16ld/v16st insns with register modify.


.*:     file format .*


Disassembly of section \.text:

00000000 <\.text>:
   0:	0b f8 38 84 80 03 	v16ld HX\(16\+\+,0\),\(r2\+=r5\) REP8
   6:	40 f9 08 00 
   a:	8b f8 20 e0 80 03 	v16st HX\(0\+\+,0\),\(r0\+=r5\) REP8
  10:	e0 53 00 00 
