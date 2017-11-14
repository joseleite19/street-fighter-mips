.data
	svs_bg: .asciiz "img/bin/select_vs.bin"
.text

screen_select_vs:

	fill_scr(0x07)# Preenche a tela de vermelho

	open_file($s0,svs_bg)
	read_file($s0,buffer1,80000)
	close_file($s0)

	li $s1, 0#s1 = p1 selecao
	li $s2, 4#s2 = p2 selecao
	svs_fori:	print_image(0,0,buffer1,sprite)

				mod($t3, $s1, 4)
				mul $t3, $t3, 34
				add $t3, $t3, 91#t3 = p1 x

				div $t4, $s1, 4
				mflo $t4
				mul $t4, $t4, 34
				add $t4, $t4, 154#t4 = p1 y

				move $s3, $t3#save t3
				move $s4, $t4#save t4

				mod($t3, $s2, 4)
				mul $t3, $t3, 34
				add $t3, $t3, 91#t3 = p2 x

				div $t4, $s2, 4
				mflo $t4
				mul $t4, $t4, 34
				add $t4, $t4, 154#t4 = p2 y

				add $s5, $t3, 1#save t3
				add $s6, $t4, 1#save t4

				print_rect($s3,$s4,35,35,P1_COLOR)
				print_rect($s5,$s6,35,35,P2_COLOR)

				li $v0, 104
				la $a0, p1
				add $a1, $s3, 10
				add $a2, $s4, -3
				li $a3, P1_COLOR

				syscall

				la $a0, p2
				add $a1, $s5, 10
				add $a2, $s6, 31
				li $a3, P2_COLOR

				syscall


	svs_read:	read_int($t0)

				beq $t0,1,svs_inc1
				beq $t0,2,svs_dec1
				beq $t0,3,svs_inc2
				beq $t0,4,svs_dec2
				beq $t0,5,svs_do
				beq $t0,0,svs_foro
				j svs_read

				svs_inc1:#seta pra baixo
					beq $s1,7,svs_fori
					addi $s1,$s1,1
					j svs_fori
				svs_dec1:#seta pra cima
					beq $s1,0,svs_fori
					addi $s1,$s1,-1
					j svs_fori
				svs_inc2:#seta pra baixo
					beq $s2,7,svs_fori
					addi $s2,$s2,1
					j svs_fori
				svs_dec2:#seta pra cima
					beq $s2,0,svs_fori
					addi $s2,$s2,-1
					j svs_fori
				svs_do:#enter
					j select_stage

				j svs_fori
	svs_foro:	nop

	j screen_menu
