#objdump: -dr
#name: vec80 SETF/row-B forms emit the full 10 bytes (#127)
# Row-B SETF forms advance by 10 (mnemonic word + 4-byte aux continuation); the
# immediate-B SETF and no-SETF row-B forms stay 6.  A 6-byte row-B SETF here would be
# the #127 under-emit -- which was a measurement artifact, never a real defect.

.*:     file format .*


Disassembly of section \.text:

00000000 <\.text>:
   0:	00 ff 30 c5 0c ab 	v32add HY\(20,0\),HY\(10,0\),HY\(12,0\) SETF
   6:	c0 f3 3c 00 
   a:	00 ff 38 c5 0c 0b 	v32add HY\(20,0\),-,HY\(12,0\) SETF
  10:	c0 f3 3c 00 
  14:	00 fd 20 85 0c aa 	v16add HX\(20,0\),HX\(10,0\),HX\(12,0\) SETF
  1a:	c0 f3 3c 00 
  1e:	00 f7 38 c5 47 04 	v32add HY\(20,0\),-,0x7 SETF
  24:	00 f7 30 c5 0c a3 	v32add HY\(20,0\),HY\(10,0\),HY\(12,0\)
