.data
	sai_bg: .asciiz "../img/bin/select_ai.bin"
	sprite: .word 53, 84
.text

screen_select_ai:

	fill_scr(RED)# Preenche a tela de vermelho

	open_file($s0,sai_bg)
	read_file($s0,buffer1,80000)
	close_file($s0)

	li $s1, 0#s1 = p1 selecao
	li $s2, 0#s2 = p2 selecao
	sai_fori:	print_image(0,0,buffer1,screen_sz)

				mod($t3, $s1, 4)
				mul $t3, $t3, 34
				add $t3, $t3, 91#t3 = p1 x

				div $t4, $s1, 4
				mflo $t4
				mul $t4, $t4, 34
				add $t4, $t4, 154#t4 = p1 y


				add $a1, $t3, 10
				add $a2, $t4, -3

				print_rect($t3,$t4,35,35,P1_COLOR)

				la $a0, p1
				printsr($a0,$a1,$a2,P1_COLOR)

	sai_read:	read_int($t0)

				beq $t0,1,sai_inc
				beq $t0,2,sai_dec
				beq $t0,3,sai_do
				beq $t0,0,sai_foro
				j sai_read

				#seta pra baixo
				sai_inc:addi $s1,$s1,1
						bne $s1,8,sai_fori
						li $s1, 0
						j sai_fori
				#seta pra cima
				sai_dec:addi $s1,$s1,-1
						bne $s1,-1,sai_fori
						li $s1, 7
						j sai_fori
				#enter
				sai_do:	bne $s1, 0, sai_do2
						li $s2, 1
				sai_do2:init_player_info($s1,$s2)

						jal select_stage

						fill_scr(BLACK)

						prints_int($s1,10,10,P1_COLOR)
						prints_int($s2,10,20,P2_COLOR)
						printsr($s3,10,30,WHITE)

						select_sprites($s1,$s4)				#s4 = sprites_ryu
						select_sprite($s4,ANIM_PUNCH,0,$s4)	#s4 = "../img/bin/spr_ryu_punch0.bin"
						printsr($s4,10,40,P1_COLOR)

						select_sprites($s2,$s5)				#s5 = sprites_ken
						select_sprite($s5,ANIM_WALK,3,$s5)	#s5 = "../img/bin/spr_ken_walk3.bin"
						printsr($s5,10,50,P2_COLOR)


				li $s5, 0
				li $s6, 15
				j test_after_mod

				test_fori:	beqz $s6, sai_fori
					print_image(100,100,buffer2,sprite)
					select_sprites(0,$t0)			#t0 = sprites_ryu
					select_sprite($t0,$s1,-1,$t0)	#t0 = 2
					add $s5, $s5, 1
					bne $s5, $t0, test_after_mod
					li $s5, 0
					j test_after_mod
				test_after_mod: nop
					select_sprites(0,$t0)			#t0 = sprites_ryu
					select_sprite($t0,$s1,$s5,$t0)	#t0 = "../img/bin/sprites/ryu/punch0.bin"
					printsr($t0,10,60,WHITE)

					open_filer($s0,$t0)
					read_file($s0,buffer2,80000)
					close_file($s0)

					add $s6,$s6,-1
					sleep(500)
					j test_fori




				j sai_fori
	sai_foro:	nop

	j screen_menu
