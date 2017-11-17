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
	svs_fori:	print_image(0,0,buffer1,screen_sz)

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
				beq $t0,0,screen_menu
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
							bne $s2,7,svs_fori
							li $s2, 0
							j svs_fori
				#seta pra cima
				svs_dec2:	addi $s2,$s2,-1
							bne $s2,-1,svs_fori
							li $s2, 7
							j svs_fori
				#enter
				svs_do:		init_player_info($s1,$s2)

							jal select_stage
							# fill_scr(BLACK)
							prints_int($s1,10,10,P1_COLOR)
							prints_int($s2,10,20,P2_COLOR)
							printsr($s3,10,30,WHITE)

							select_sprites($s1,$s4)				#s4 = sprites_ryu
							select_sprite($s4,ANIM_PUNCH,0,$s4)	#s4 = "../img/bin/spr_ryu_punch0.bin"
							printsr($s4,10,40,P1_COLOR)

							select_sprites($s2,$s5)				#s5 = sprites_ken
							select_sprite($s5,ANIM_WALK,3,$s5)	#s5 = "../img/bin/spr_ken_walk3.bin"
							printsr($s5,10,50,P2_COLOR)


							sleep(10000)
							j svs_fori
