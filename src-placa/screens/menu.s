.eqv menus_ini_addr 0x0115f600



.text

.macro read_menu(%ind_menu,%addr_buffer)
	add $a0, $zero, %ind_menu
	la $a1, %addr_buffer
	_jal(read_menu_)
.end_macro


screen_menu: fill_scr(RED)# Preenche a tela de vermelho
	
	li $s0, 0
	s_menu_loop:
		read_menu($s0,SRAM)
		vga_print(SRAM, 0, 0)
		vga_refresh()
		

	s_menu_read:#keyboard_upd()

		keyboard_check(w,s_menu_w, 0)
		keyboard_check(s,s_menu_s, 0)
		keyboard_check(f,s_menu_enter, 1)
		
		
		_j(s_menu_read)

	s_menu_w:add $s0, $s0, -1
		max($s0, 0)
		_j(s_menu_loop)
	s_menu_s:add $s0, $s0, 1
		min($s0, 2)
		_j(s_menu_loop)
	s_menu_enter:
		beq $s0, 0, screen_arcade
		nop
		nop
		beq $s0, 1, screen_versus
		nop
		nop
		beq $s0, 2, screen_quit
		nop
		nop
		_j(s_menu_loop)
	screen_versus:
	fill_scr(BLACK)
		_j(end)
	
	screen_quit:
		_j(end)

read_menu_:
	la $s1, menus_ini_addr
	add $s1, $s1, 0xcc00
	la $t0, 0x14000
	multi($t0, $a0, $t0)
	add $s1, $s1, $t0

	la $t0, VGAsz
	copy_addr($s1, $a1, $t0)  #copia do sd apontado por s5, e envia para SRAM_ADDR, e copia srite_size bytes.
	_jr($ra)
