#objdump: -dr
#name: vec80 accumulator modifiers round-trip
# UDEC/SDEC/USUB/SSUB and their H variants used to assemble to the encodings of
# UACC/SACC/UADD/SADD: parse_vec80mods never set SUB_BIT.

.*:     file format .*


Disassembly of section \.text:

00000000 <\.text>:
   0:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) UACC
   6:	c0 03 bc 08 
   a:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) UDEC
  10:	c0 03 fc 08 
  14:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) SACC
  1a:	c0 03 bc 0a 
  1e:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) SDEC
  24:	c0 03 fc 0a 
  28:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) UADD
  2e:	c0 03 3c 08 
  32:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) USUB
  38:	c0 03 7c 08 
  3c:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) SADD
  42:	c0 03 3c 0a 
  46:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) SSUB
  4c:	c0 03 7c 0a 
  50:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) UACCH
  56:	c0 03 bc 0c 
  5a:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) UDECH
  60:	c0 03 fc 0c 
  64:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) SACCH
  6a:	c0 03 bc 0e 
  6e:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) SDECH
  74:	c0 03 fc 0e 
  78:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) UADDH
  7e:	c0 03 3c 0c 
  82:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) USUBH
  88:	c0 03 7c 0c 
  8c:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) SADDH
  92:	c0 03 3c 0e 
  96:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) SSUBH
  9c:	c0 03 7c 0e 
  a0:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) CLRA UACC
  a6:	c0 03 bc 09 
  aa:	00 fe 38 e0 14 03 	v32mov -,HY\(20,0\) CLRA UDEC
  b0:	c0 03 fc 09 
