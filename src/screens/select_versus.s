.data
	svs_bg: .asciiz "../img/bin/select_vs.bin"
.text

screen_select_vs:

	fill_scr(RED)# Preenche a tela de vermelho

	open_file($s0,svs_bg)
	read_file($s0,buffer1,80000)
	close_file($s0)

	li $s1, 0#s1 = p1 selecao
	li $s2, 4#s2 = p2 selecao
	svs_fori:	vga_print_full(buffer1,0,0)

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

				vga_refresh()

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


	svs_read:	read_wasd_enter($t0)

				beq $t0,1,svs_dec1#w
				beq $t0,2,svs_inc1#s
				beq $t0,3,svs_dec2#a
				beq $t0,4,svs_inc2#d
				beq $t0,0,svs_do#enter
				j svs_read

				#seta pra baixo
				svs_inc1:	addi $s1,$s1,1
							bne $s1,8,svs_fori
							li $s1, 0
							j svs_fori
				#seta pra cima
				svs_dec1:	addi $s1,$s1,-1
							bne $s1,-1,svs_fori
							li $s1, 7
							j svs_fori
				#seta pra baixo
				svs_inc2:	addi $s2,$s2,1
							bne $s2,8,svs_fori
							li $s2, 0
							j svs_fori
				#seta pra cima
				svs_dec2:	addi $s2,$s2,-1
							bne $s2,-1,svs_fori
							li $s2, 7
							j svs_fori
				#enter
				svs_do:		player_init_info($s1,$s2)
							jal select_stage
							j g_start
