#objdump: -d
#name: Simple bne (1 word instruction)

.*: .*

Disassembly of section \.text:

00000000 <lab-0xe>:
   0:	01 00             	nop
   2:	01 00             	nop
   4:	01 00             	nop
   6:	01 00             	nop
   8:	01 00             	nop
   a:	01 00             	nop
   c:	01 00             	nop

0000000e <lab>:
   e:	01 00             	nop
  10:	01 00             	nop
  12:	01 00             	nop
  14:	01 00             	nop
  16:	01 00             	nop
  18:	01 00             	nop
  1a:	01 00             	nop
  1c:	01 00             	nop
  1e:	01 00             	nop
  20:	01 00             	nop
  22:	01 00             	nop
  24:	01 00             	nop
  26:	01 00             	nop
  28:	01 00             	nop
  2a:	01 00             	nop
  2c:	01 00             	nop
  2e:	01 00             	nop
  30:	01 00             	nop
  32:	01 00             	nop
  34:	01 00             	nop
  36:	01 00             	nop
  38:	01 00             	nop
  3a:	01 00             	nop
  3c:	01 00             	nop
  3e:	01 00             	nop
  40:	01 00             	nop
  42:	01 00             	nop
  44:	01 00             	nop
  46:	01 00             	nop
  48:	01 00             	nop
  4a:	01 00             	nop
  4c:	01 00             	nop
  4e:	01 00             	nop
  50:	01 00             	nop
  52:	01 00             	nop
  54:	01 00             	nop
  56:	01 00             	nop
  58:	01 00             	nop
  5a:	01 00             	nop
  5c:	01 00             	nop
  5e:	01 00             	nop
  60:	01 00             	nop
  62:	01 00             	nop
  64:	01 00             	nop
  66:	01 00             	nop
  68:	01 00             	nop
  6a:	01 00             	nop
  6c:	01 00             	nop
  6e:	01 00             	nop
  70:	01 00             	nop
  72:	01 00             	nop
  74:	01 00             	nop
  76:	01 00             	nop
  78:	01 00             	nop
  7a:	01 00             	nop
  7c:	01 00             	nop
  7e:	01 00             	nop
  80:	c7 18             	bne e <lab>
