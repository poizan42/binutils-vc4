#objdump: -dr
#name: vgetacc 48-bit SETF spelled SETF, not +r0


.*:     file format .*


Disassembly of section \.text:

00000000 <\.text>:
   0:	00 f3 38 c5 c1 03 	vgetacc HY\(20,0\),-,\(r1\) SETF
   6:	00 f3 38 c5 81 03 	vgetacc HY\(20,0\),-,\(r1\)
