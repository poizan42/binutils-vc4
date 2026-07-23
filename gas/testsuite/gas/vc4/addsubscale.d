#objdump: -dr
#name: add/sub with scaled immediates.

.*:     file format .*


Disassembly of section .*:

00000000 <.*>:
   0:	f0 63             	add r0,0x1f
   2:	f0 77             	add r0,0xf8
   4:	f0 63             	add r0,0x1f
   6:	f0 77             	add r0,0xf8
   8:	40 c0 51 08       	add.eq r0,r1,17
   c:	60 c2 51 08       	add.eq r0,r1,34
  10:	a0 c2 51 08       	add.eq r0,r1,68
  14:	c0 c2 51 08       	add.eq r0,r1,136
  18:	e0 c2 51 08       	add.eq r0,r1,272
  1c:	80 c5 51 08       	add.eq r0,r1,544
  20:	a0 c5 51 08       	add.eq r0,r1,1088
  24:	c0 c5 51 08       	add.eq r0,r1,2176
  28:	e0 c5 51 08       	add.eq r0,r1,4352
  2c:	c0 c0 51 08       	sub.eq r0,r1,17
  30:	20 c6 51 08       	sub.eq r0,r1,34
  34:	40 c6 51 08       	sub.eq r0,r1,68
  38:	60 c6 51 08       	sub.eq r0,r1,136
  3c:	80 c6 51 08       	sub.eq r0,r1,272
  40:	a0 c6 51 08       	sub.eq r0,r1,544
  44:	c0 c6 51 08       	sub.eq r0,r1,1088
  48:	e0 c6 51 08       	sub.eq r0,r1,2176
  4c:	00 c7 51 08       	sub.eq r0,r1,4352
  50:	40 c0 51 08       	add.eq r0,r1,17
  54:	60 c2 51 08       	add.eq r0,r1,34
  58:	a0 c2 51 08       	add.eq r0,r1,68
  5c:	c0 c2 51 08       	add.eq r0,r1,136
  60:	e0 c2 51 08       	add.eq r0,r1,272
  64:	80 c5 51 08       	add.eq r0,r1,544
  68:	a0 c5 51 08       	add.eq r0,r1,1088
  6c:	c0 c5 51 08       	add.eq r0,r1,2176
  70:	e0 c5 51 08       	add.eq r0,r1,4352
  74:	c0 c0 51 08       	sub.eq r0,r1,17
  78:	20 c6 51 08       	sub.eq r0,r1,34
  7c:	40 c6 51 08       	sub.eq r0,r1,68
  80:	60 c6 51 08       	sub.eq r0,r1,136
  84:	80 c6 51 08       	sub.eq r0,r1,272
  88:	a0 c6 51 08       	sub.eq r0,r1,544
  8c:	c0 c6 51 08       	sub.eq r0,r1,1088
  90:	e0 c6 51 08       	sub.eq r0,r1,2176
  94:	00 c7 51 08       	sub.eq r0,r1,4352
