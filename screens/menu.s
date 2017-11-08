.data
	menu_img1: .asciiz "img/arcade.bin"
	menu_img2: .asciiz "img/vs.bin"
	menu_img3: .asciiz "img/quit.bin"
	sprite: .word 320 240

.text

screen_menu: fill_scr(0x07)# Preenche a tela de vermelho
	open_file($s0,menu_img1)
	read_file($s0,buffer1,80000)
	close_file($s0)
	open_file($s0,menu_img2)
	read_file($s0,buffer2,80000)
	close_file($s0)
	open_file($s0,menu_img3)
	read_file($s0,buffer3,80000)
	close_file($s0)

	li $s0, 0
	main_loopb:
		beq $s0, 0,img1#'start' selecionado
		beq $s0, 1,img2#'options' selecionado
		beq $s0, 2,img3#'quit' selectionado
		j screen_end#erro

		img1: print_image(0,0,buffer1,sprite)
			j afterprint
		img2: print_image(0,0,buffer2,sprite)
			j afterprint
		img3: print_image(0,0,buffer3,sprite)
			j afterprint

		afterprint:
		read_int($s1)#le_letra($s1)
		beq $s1,1,inc#beq $s1,KEY_W,inc
		beq $s1,2,dec#beq $s1,KEY_S,dec
		beq $s1,3,do #beq $s1,KEY_ENTER,do
		j afterprint #caso digitou outra coisa, ignora e le denovo

		inc:#seta pra baixo
			beq $s0,3,main_loopb
			addi $s0,$s0,1
			j main_loopb
		dec:#seta pra cima
			beq $s0,0,main_loopb
			addi $s0,$s0,-1
			j main_loopb
		do:#enter
			beq $s0, 0, screen_select_ai
			beq $s0, 1, screen_select_vs
			beq $s0, 2, screen_end
			j main_loopb
