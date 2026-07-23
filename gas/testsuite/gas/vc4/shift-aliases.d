#objdump: -dr
#name: Shift aliases in addscale/subscale insns

.*: .*

Disassembly of section \.text:

00000000 <\.text>:
   0:	21 53             	addscale r1,r2<<1
   2:	21 55             	addscale r1,r2<<2
   4:	21 53             	addscale r1,r2<<1
   6:	21 53             	addscale r1,r2<<1
   8:	21 53             	addscale r1,r2<<1
   a:	21 53             	addscale r1,r2<<1
   c:	21 53             	addscale r1,r2<<1
   e:	c0 c2 08 0f       	addscale r0,r1,r8<<3
  12:	c0 c2 08 0f       	addscale r0,r1,r8<<3
  16:	c0 c2 08 0f       	addscale r0,r1,r8<<3
  1a:	80 c5 08 0f       	addscale r0,r1,r8<<5
  1e:	80 c5 08 0f       	addscale r0,r1,r8<<5
  22:	80 c5 08 0f       	addscale r0,r1,r8<<5
  26:	e0 c5 08 0f       	addscale r0,r1,r8<<8
  2a:	e0 c5 08 0f       	addscale r0,r1,r8<<8
  2e:	e0 c5 08 0f       	addscale r0,r1,r8<<8
  32:	20 c6 0c 47       	subscale r0,r8,r12<<1
  36:	40 c6 0c 47       	subscale r0,r8,r12<<2
  3a:	60 c6 0c 47       	subscale r0,r8,r12<<3
  3e:	80 c6 0c 47       	subscale r0,r8,r12<<4
  42:	a0 c6 0c 47       	subscale r0,r8,r12<<5
  46:	c0 c6 0c 47       	subscale r0,r8,r12<<6
  4a:	e0 c6 0c 47       	subscale r0,r8,r12<<7
  4e:	00 c7 0c 47       	subscale r0,r8,r12<<8
