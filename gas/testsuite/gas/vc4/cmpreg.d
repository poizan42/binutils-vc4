#objdump: -d
#name: Compare-register encodings


.*:     file format .*


Disassembly of section \.text:

00000000 <\.text>:
   0:	10 4a             	cmp r0,r1
   2:	40 c1 01 06       	cmp\.gt r0,r1
   6:	40 c1 14 87       	cmp r16,r20
   a:	40 c1 94 85       	cmp\.lt r16,r20
