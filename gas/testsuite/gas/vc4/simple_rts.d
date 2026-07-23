#objdump: -dr 
#name: Simple rts function

.*: .*

Disassembly of section \.text:

00000000 <\.text>:
   0:	5a 00             	rts
   2:	10 08             	ld r0,\(r1\)
