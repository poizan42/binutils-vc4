#objdump: -dr
#name: sized ld/st variants


.*:     file format .*


Disassembly of section .*:

00000000 <.*>:
   0:	56 08             	ld r6,\(r5\)
   2:	06 04             	ld r6,\(sp\)
   4:	f6 05             	ld r6,\(sp\+0x7c\)
   6:	56 08             	ld r6,\(r5\)
   8:	06 04             	ld r6,\(sp\)
   a:	f6 05             	ld r6,\(sp\+0x7c\)
   c:	56 09             	st r6,\(r5\)
   e:	06 06             	st r6,\(sp\)
  10:	f6 07             	st r6,\(sp\+0x7c\)
  12:	56 09             	st r6,\(r5\)
  14:	06 06             	st r6,\(sp\)
  16:	f6 07             	st r6,\(sp\+0x7c\)
  18:	16 a2 00 28       	ld r22,\(r5\)
  1c:	16 a2 00 c8       	ld r22,\(sp\)
  20:	16 a2 7c c8       	ld r22,\(sp\+124\)
  24:	16 a2 00 28       	ld r22,\(r5\)
  28:	16 a2 00 c8       	ld r22,\(sp\)
  2c:	16 a2 7c c8       	ld r22,\(sp\+124\)
  30:	36 a2 00 28       	st r22,\(r5\)
  34:	36 a2 00 c8       	st r22,\(sp\)
  38:	36 a2 7c c8       	st r22,\(sp\+124\)
  3c:	36 a2 00 28       	st r22,\(r5\)
  40:	36 a2 00 c8       	st r22,\(sp\)
  44:	36 a2 7c c8       	st r22,\(sp\+124\)
  48:	05 a9 30 75       	ld r5,\(sp\+30000\)
  4c:	05 a9 30 75       	ld r5,\(sp\+30000\)
  50:	25 a9 30 75       	st r5,\(sp\+30000\)
  54:	25 a9 30 75       	st r5,\(sp\+30000\)
