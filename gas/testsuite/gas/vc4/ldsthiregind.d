#objdump: -dr
#name: forced 48-bit indirect ld/st


.*:     file format .*


Disassembly of section .*:

00000000 <.*>:
   0:	9a e6 00 00 00 18 	ldb lr,\(r3\+0\)
   6:	ba e6 00 00 00 18 	stb lr,\(r3\+0\)
   c:	9a a2 00 18       	ldb lr,\(r3\)
  10:	ba a2 00 18       	stb lr,\(r3\)
