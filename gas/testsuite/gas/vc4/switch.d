#objdump: -dr
#name: Switch instruction & directives.

.*: .*

Disassembly of section \.text:

00000000 <top>:
   0:	01 00             	nop
   2:	01 00             	nop
   4:	84 00             	switch r4

00000006 <\.c>:
   6:	04                	\.case e <case1>
   7:	06                	\.case 12 <case2>
   8:	08                	\.case 16 <case3>
   9:	0a                	\.case 1a <case4>

0000000a <case0>:
   a:	01 00             	nop
   c:	5a 00             	rts

0000000e <case1>:
   e:	01 00             	nop
  10:	5a 00             	rts

00000012 <case2>:
  12:	01 00             	nop
  14:	5a 00             	rts

00000016 <case3>:
  16:	01 00             	nop
  18:	5a 00             	rts

0000001a <case4>:
  1a:	01 00             	nop
  1c:	5a 00             	rts
