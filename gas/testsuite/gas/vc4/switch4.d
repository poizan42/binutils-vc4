#objdump: -dr
#name: Switch instruction & directives (4).

.*: .*

Disassembly of section \.text:

00000000 <top>:
   0:	01 00             	nop
   2:	01 00             	nop
   4:	01 00             	nop
   6:	01 00             	nop
   8:	01 00             	nop
   a:	01 00             	nop
   c:	01 00             	nop
   e:	84 00             	switch r4

00000010 <\$c>:
  10:	0b                	\.case 26 <case4>
  11:	09                	\.case 22 <case3>
  12:	07                	\.case 1e <case2>
  13:	05                	\.case 1a <case1>
  14:	03                	\.case 16 <case0>
	\.\.\.

00000016 <case0>:
  16:	01 00             	nop
  18:	5a 00             	rts

0000001a <case1>:
  1a:	01 00             	nop
  1c:	5a 00             	rts

0000001e <case2>:
  1e:	01 00             	nop
  20:	5a 00             	rts

00000022 <case3>:
  22:	01 00             	nop
  24:	5a 00             	rts

00000026 <case4>:
  26:	01 00             	nop
  28:	5a 00             	rts
