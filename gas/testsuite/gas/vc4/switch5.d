#objdump: -dr
#name: Switch instruction & directives (5).

.*: .*

Disassembly of section \.text:

00000000 <case3>:
   0:	01 00             	nop
   2:	5a 00             	rts

00000004 <case4>:
   4:	01 00             	nop
   6:	5a 00             	rts

00000008 <top>:
   8:	01 00             	nop
   a:	01 00             	nop
   c:	84 00             	switch r4

0000000e <\$L0>:
   e:	05                	\.case 18 <case1>
   f:	07                	\.case 1c <case2>
  10:	03                	\.case 14 <case0>
  11:	f9                	\.case 0 <case3>
  12:	fb                	\.case 4 <case4>
	...

00000014 <case0>:
  14:	01 00             	nop
  16:	5a 00             	rts

00000018 <case1>:
  18:	01 00             	nop
  1a:	5a 00             	rts

0000001c <case2>:
  1c:	01 00             	nop
  1e:	5a 00             	rts
