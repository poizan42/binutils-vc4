#objdump: -dr
#name: pc-relative ld/st

.*:     file format .*


Disassembly of section .*:

00000000 <pcrel_label-0x14>:
   0:	05 e7 14 00 00 f8 	ld r5,14 <pcrel_label>
   6:	05 e7 0e 00 00 f8 	ld r5,14 <pcrel_label>
   c:	01 00             	nop
   e:	01 00             	nop
  10:	01 00             	nop
  12:	01 00             	nop

00000014 <pcrel_label>:
  14:	01 00             	nop
