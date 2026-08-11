#objdump: -dr
#name: vec80 accumulator modifiers round-trip
# UDEC/SDEC/USUB/SSUB and their H variants used to assemble to the encodings of
# UACC/SACC/UADD/SADD: parse_vec80mods never set SUB_BIT.

.*:     file format .*


Disassembly of section \.text:

00000000 <\.text>:
   0:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) UACC
   6:	c0 f3 bc 08 
   a:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) UDEC
  10:	c0 f3 fc 08 
  14:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) SACC
  1a:	c0 f3 bc 0a 
  1e:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) SDEC
  24:	c0 f3 fc 0a 
  28:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) UADD
  2e:	c0 f3 3c 08 
  32:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) USUB
  38:	c0 f3 7c 08 
  3c:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) SADD
  42:	c0 f3 3c 0a 
  46:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) SSUB
  4c:	c0 f3 7c 0a 
  50:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) UACCH
  56:	c0 f3 bc 0c 
  5a:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) UDECH
  60:	c0 f3 fc 0c 
  64:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) SACCH
  6a:	c0 f3 bc 0e 
  6e:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) SDECH
  74:	c0 f3 fc 0e 
  78:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) UADDH
  7e:	c0 f3 3c 0c 
  82:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) USUBH
  88:	c0 f3 7c 0c 
  8c:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) SADDH
  92:	c0 f3 3c 0e 
  96:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) SSUBH
  9c:	c0 f3 7c 0e 
  a0:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) CLRA UACC
  a6:	c0 f3 bc 09 
  aa:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) CLRA UDEC
  b0:	c0 f3 fc 09 
  b4:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) CLRA
  ba:	c0 f3 3c 01 
  be:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) WBA
  c4:	c0 f3 bc 00 
  c8:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) SUB
  ce:	c0 f3 7c 00 
  d2:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) SIGN
  d8:	c0 f3 3c 02 
  dc:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) HIGH
  e2:	c0 f3 3c 04 
  e6:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) CLRA WBA
  ec:	c0 f3 bc 01 
  f0:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) CLRA HIGH SIGN WBA SUB
  f6:	c0 f3 fc 07 
  fa:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) max2 r0
 100:	c0 f3 3c 14 
 104:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) max4 r7
 10a:	c0 f3 fc 19 
 10e:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) max6 r3
 114:	c0 f3 fc 1c 
