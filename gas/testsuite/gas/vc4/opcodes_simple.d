#objdump: -d
#name: Simple values (various 16-bit)

.*: .*

Disassembly of section \.text:

00000000 <\.text>:
   0:	00 00             	bkpt
   2:	01 00             	nop
   4:	02 00             	sleep
   6:	03 00             	user
   8:	04 00             	ei
   a:	05 00             	di
   c:	06 00             	cbclr
   e:	07 00             	cbadd1
  10:	08 00             	cbadd2
  12:	09 00             	cbadd3
  14:	0a 00             	rti
  16:	20 00             	swi r0
  18:	2d 00             	swi r13
  1a:	3f 00             	swi pc
  1c:	5a 00             	rts
  1e:	40 00             	b r0
  20:	53 00             	b r19
  22:	5f 00             	b pc
  24:	60 00             	bl r0
  26:	72 00             	bl r18
  28:	7f 00             	bl pc
  2a:	82 00             	switch r2
  2c:	a3 00             	switch r3
  2e:	e5 00             	version r5
