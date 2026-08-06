# The B slot of a 48-bit vector op is a scalar register, and it has NO absent
# form: 0x380 is selector 7 plus register 0, so `-` and `(r0)` are the same bits.
# It is also live -- on vgetacc it supplies the shift amount -- so a bare `-`
# there must be refused rather than silently meaning r0.
#
# Rejecting it in the register parser alone is not enough: cgen falls through to
# the immediate variant, whose expression parser takes the `-` as a unary minus
# on a missing operand and emits WRONG BYTES with only a warning. Both paths are
# closed, and this test fails if either reopens.
	vgetacc	H(62,0),-,-
	vgetacc	-,-,-
# The dash is still legitimate for the D and A slots, and negative immediates
# must not be caught by the same check.  These lines must NOT error.
	v8ld	-,H(7,48),(r0)
	vgetacc	H(62,0),-,(r0)
	add	r0,r1,-1
