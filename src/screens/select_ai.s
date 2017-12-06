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
	sai_fori:	vga_print_full(buffer1,0,0)

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

				vga_refresh()

				#la $a0, p1
				#printsr($a0,$a1,$a2,P1_COLOR)

	sai_read:	keyboard_upd()

				bu_get_val(p1keys,0,$t0)#w
				keyboard_check_j($t0,sai_dec)

				bu_get_val(p1keys,2,$t0)#s
				keyboard_check_j($t0,sai_inc)

				bu_get_val(enter,0,$t0)#f
				keyboard_check_j($t0,sai_do)

				j sai_read

				sai_inc:addi $s1,$s1,1
						bne $s1,8,sai_fori
						li $s1, 0
						j sai_fori
				sai_dec:addi $s1,$s1,-1
						bne $s1,-1,sai_fori
						li $s1, 7
						j sai_fori
				sai_do:	bne $s1, 0, sai_do2
						li $s2, 1
				sai_do2:player_init_info($s1,$s2)
						jal select_stage
						j g_start

				j sai_fori
	sai_foro:	nop

	j screen_menu
