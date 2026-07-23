#objdump: -d
#name: Simple values (cmp)

.*: .*

Disassembly of section \.text:

00000000 <\.text>:
   0:	e0 b0 20 00       	and r0,32
   4:	00 6a             	cmp r0,0x0
   6:	10 6a             	cmp r0,0x1
   8:	f0 6b             	cmp r0,0x1f
   a:	40 b1 20 00       	cmp r0,32
   e:	40 c1 7f 07       	cmp r0,-1
  12:	40 c1 61 07       	cmp r0,-31
  16:	40 c1 60 07       	cmp r0,-32
  1a:	40 b1 ff 7f       	cmp r0,32767
  1e:	40 e9 00 80 00 00 	cmp r0,0x8000
  24:	40 e9 01 80 00 00 	cmp r0,0x8001
  2a:	40 b1 01 80       	cmp r0,-32767
  2e:	40 b1 00 80       	cmp r0,-32768
  32:	40 e9 ff 7f ff ff 	cmp r0,0xffff7fff
  38:	40 c1 7e 07       	cmp r0,-2
  3c:	40 e9 21 43 65 87 	cmp r0,0x87654321
