# Bit 38 of the 48-bit register-form vgetacc is Vsetf48 -- it makes the
# instruction write the vector flags.  It is NOT a B-operand post-increment:
# getacc has no memory address, so there is no offset to add a register to.
# Before task #122 the assembler spelled this bit `+r0`, which both misnames a
# live flag write as an addressing mode and made the 48-bit SETF form
# impossible to write (SETF was rejected, promoting to the 80-bit encoding).
#
# These are the exact bytes of #119/#120's silicon SETF probes.  This test
# fails if the SETF spelling regresses back to `+rN`.
	.text
	vgetacc	HY(20,0),-,(r1) SETF
	vgetacc	HY(20,0),-,(r1)
