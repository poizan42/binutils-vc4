#objdump: -dr
#name: three-operand add with 16-bit signed immediate.

.*:     file format .*


Disassembly of section .*:

00000000 <.text>:
   0:	4d b4 81 ff       	add r13,r2,-127
   4:	42 b4 81 ff       	add r2,r2,-127
   8:	40 b4 7f 00       	add r0,r2,127
   c:	4d b4 81 ff       	add r13,r2,-127
  10:	42 b4 81 ff       	add r2,r2,-127
  14:	40 b4 7f 00       	add r0,r2,127
