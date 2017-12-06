.eqv P1_COLOR 0x07
.eqv P2_COLOR 0xC0

screen_arcade:fill_scr(RED)# Preenche a tela de vermelho
	li $t0, 2
	read_menu($t0,SRAM)
	li $s0, 0
	li $s1, 1
	sai_loop:
		jal music_play
		nop
		nop
		nop
		
		vga_print_full(SRAM, 0, 0)
		
		mod($t3, $s1, 4)
		multi($t3, $t3, 34)
		add $t3, $t3, 91#t3 = p1 x

		div $t4, $s1, 4
		mflo $t4
		multi($t4, $t4, 34)
		add $t4, $t4, 154#t4 = p1 y
		#jal music_play
		nop
		nop
		nop

		add $a1, $t3, 10
		add $a2, $t4, -3

		print_rect($t3,$t4,35,35,P1_COLOR)

		vga_refresh()

	sai_read:
			#jal music_play
		nop
		nop
		nop
		keyboard_check(w,sai_dec, 0)
		keyboard_check(s,sai_inc, 0)
		keyboard_check(f,sai_do, 1)
		sai_inc:addi $s1,$s1,1
			bne $s1,8,sai_loop
			nop
			nop
			li $s1, 0
			_j(sai_loop)
		sai_dec:addi $s1,$s1,-1
			bne $s1,-1,sai_loop
			nop
			nop
			li $s1, 7
			_j(sai_loop)
		sai_do:	bne $s1, 0, sai_do2
			nop
			nop
			li $s2, 1
		sai_do2:#player_init_info($s1,$s2)
			#_jal(select_stage)
			#_j(g_start)
			_j(sai_loop)
		#jal music_play
		nop
		nop
		nop
		_j(sai_loop)
