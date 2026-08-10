	.text
	; #130: the vector-multiply family (Vaop 48..61 at Vawidth=0, plus mul32 at Vawidth=1).
	; This is the silicon-measured 48-bit horizontal uniform-widthcode diagonal (vpu-sem/gen-alu.py
	; MULOPS); every mnemonic carries a MANDATORY signedness suffix -- bare `vmul`/`v32mul` do not
	; exist. The first two entries are lifted verbatim from new-start4.elf for ground truth.
	vmulhn.ss  HX(4,32),HX(5,0),HX(5,0)		; firmware ec02d38
	vmull.ss   HX(3,0),HX(20,0),HX(18,0)		; firmware ec02b22
	; the 14-op 16-bit-result family, Vaop 48..61 (widthcode 4 -> HX):
	vmull.ss   HX(20,0),HX(10,0),HX(12,0)
	vmulls.ss  HX(20,0),HX(10,0),HX(12,0)
	vmulm.ss   HX(20,0),HX(10,0),HX(12,0)
	vmulms.ss  HX(20,0),HX(10,0),HX(12,0)
	vmulhd.ss  HX(20,0),HX(10,0),HX(12,0)
	vmulhd.su  HX(20,0),HX(10,0),HX(12,0)
	vmulhd.us  HX(20,0),HX(10,0),HX(12,0)
	vmulhd.uu  HX(20,0),HX(10,0),HX(12,0)
	vmulhn.ss  HX(20,0),HX(10,0),HX(12,0)
	vmulhn.su  HX(20,0),HX(10,0),HX(12,0)
	vmulhn.us  HX(20,0),HX(10,0),HX(12,0)
	vmulhn.uu  HX(20,0),HX(10,0),HX(12,0)
	vmulhdt.ss HX(20,0),HX(10,0),HX(12,0)
	vmulhdt.su HX(20,0),HX(10,0),HX(12,0)
	; the 4 mul32 forms, Vawidth=1 / 32-bit result (widthcode 6 -> HY):
	vmul32.ss  HY(20,0),HY(10,0),HY(12,0)
	vmul32.su  HY(20,0),HY(10,0),HY(12,0)
	vmul32.us  HY(20,0),HY(10,0),HY(12,0)
	vmul32.uu  HY(20,0),HY(10,0),HY(12,0)
