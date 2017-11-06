.data
	quote: .asciiz "\'"
	endl: .asciiz "\n"
.text
	start:	nop
		li $v0, 4

		la $a0, quote
		syscall

		la $a0, 0xff100004
		lw $a1, 0($a0)
		syscall
		sw $zero, 0xff100004

		la $a0, quote
		syscall

		la $a0, endl
		syscall

		li $v0, 32
		li $a0, 1000
		syscall

		j start
