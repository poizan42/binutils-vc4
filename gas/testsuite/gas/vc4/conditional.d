#objdump: -dr
#name: Conditional execution

.*: .*

Disassembly of section \.text:

00000000 <\.text>:
   0:	40 c0 02 0e       	add\.gt r0,r1,r2
   4:	84 a0 43 28       	ldb\.eq r4,\(r5\+0x3\)
