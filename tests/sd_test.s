.eqv SD_BUFFER_ADD 0xff100250
.eqv SD_OFFSET 0x00011200

.eqv FILE_SD_ADD 0x00fd9000

.eqv VGA    0xff000000
.eqv VGAend 0xff012c00

.data

.text

j main

main:
	la $t0, SD_OFFSET
	la $t1, FILE_SD_ADD
	add $t0, $t0, $t1

	la $s0, VGA
	la $s1, VGAend

	for:	beq $s0, $s1, out
		li $v0, 49
		syscall


		li $s2, 0
		la $s3, SD_BUFFER_ADD
		for2:	beq $s2, 512, out2
			add $t1, $s2, $s3
			lw $t0, 0($t1)
			add $t1, $s2, $s0
			sw $t0, 0($t1)

			add $s2, $s2, 4
			j for2
		out2:	nop

		add $s0, $s0, 512
		j for
	out:	nop
	
	li $v0, 10
	syscall
