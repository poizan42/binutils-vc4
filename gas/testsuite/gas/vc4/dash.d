#objdump: -dr
#name: Test dash encodings


.*:     file format .*


Disassembly of section \.text:

00000000 <\.text>:
   0:	00 ff 00 e0 00 08 	v32add -,H\(0,0\),H\(0,0\) SETF
   6:	c0 03 3c 00 
   a:	08 fc 38 e0 ff 0c 	v16bitplanes -,255 SETF
  10:	c0 03 00 00 
  14:	10 f1 38 cc 01 04 	v32memread HY\(48,0\),-,0x1
