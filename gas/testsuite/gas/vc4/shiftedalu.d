#objdump: -dr
#name: add/sub with scaled registers.

.*:     file format .*


Disassembly of section .*:

00000000 <.*>:
   0:	00 56             	addscale r0,r0<<3
   2:	00 56             	addscale r0,r0<<3
   4:	60 c2 00 07       	addscale r0,r0,r0<<1
   8:	a0 c2 00 07       	addscale r0,r0,r0<<2
   c:	c0 c2 00 07       	addscale r0,r0,r0<<3
  10:	e0 c2 00 07       	addscale r0,r0,r0<<4
  14:	80 c5 00 07       	addscale r0,r0,r0<<5
  18:	a0 c5 00 07       	addscale r0,r0,r0<<6
  1c:	c0 c5 00 07       	addscale r0,r0,r0<<7
  20:	e0 c5 00 07       	addscale r0,r0,r0<<8
  24:	20 c6 00 07       	subscale r0,r0,r0<<1
  28:	40 c6 00 07       	subscale r0,r0,r0<<2
  2c:	60 c6 00 07       	subscale r0,r0,r0<<3
  30:	80 c6 00 07       	subscale r0,r0,r0<<4
  34:	a0 c6 00 07       	subscale r0,r0,r0<<5
  38:	c0 c6 00 07       	subscale r0,r0,r0<<6
  3c:	e0 c6 00 07       	subscale r0,r0,r0<<7
  40:	00 c7 00 07       	subscale r0,r0,r0<<8
  44:	60 c2 00 07       	addscale r0,r0,r0<<1
  48:	a0 c2 00 07       	addscale r0,r0,r0<<2
  4c:	c0 c2 00 07       	addscale r0,r0,r0<<3
  50:	e0 c2 00 07       	addscale r0,r0,r0<<4
  54:	80 c5 00 07       	addscale r0,r0,r0<<5
  58:	a0 c5 00 07       	addscale r0,r0,r0<<6
  5c:	c0 c5 00 07       	addscale r0,r0,r0<<7
  60:	e0 c5 00 07       	addscale r0,r0,r0<<8
  64:	20 c6 00 07       	subscale r0,r0,r0<<1
  68:	40 c6 00 07       	subscale r0,r0,r0<<2
  6c:	60 c6 00 07       	subscale r0,r0,r0<<3
  70:	80 c6 00 07       	subscale r0,r0,r0<<4
  74:	a0 c6 00 07       	subscale r0,r0,r0<<5
  78:	c0 c6 00 07       	subscale r0,r0,r0<<6
  7c:	e0 c6 00 07       	subscale r0,r0,r0<<7
  80:	00 c7 00 07       	subscale r0,r0,r0<<8
