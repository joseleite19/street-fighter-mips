.text

screen_select_ai:

	fill_scr(0x07)# Preenche a tela de vermelho

	open_file($s0,select_img1)
	read_file($s0,buffer1,80000)
	close_file($s0)

	li $s1, 0#s1 = p1 selecao
	#li $s2, 0#s2 = p2 selecao
	sai_fori:	print_image(0,0,buffer1,sprite)

				mod($t3, $s1, 4)
				mul $t3, $t3, 34
				add $t3, $t3, 91#t3 = p1 x

				div $t4, $s1, 4
				mflo $t4
				mul $t4, $t4, 34
				add $t4, $t4, 154#t4 = p1 y


				li $v0, 104
				la $a0, select_p1
				add $a1, $t3, 10
				add $a2, $t4, -3
				li $a3, P1_COLOR

				print_rect($t3,$t4,35,35,P1_COLOR)
				syscall


	sai_read:	read_int($t0)

				beq $t0,1,sai_inc
				beq $t0,2,sai_dec
				beq $t0,3,sai_do
				beq $t0,0,sai_foro
				j sai_read

				sai_inc:#seta pra baixo
					beq $s1,7,sai_fori
					addi $s1,$s1,1
					j sai_fori
				sai_dec:#seta pra cima
					beq $s1,0,sai_fori
					addi $s1,$s1,-1
					j sai_fori
				sai_do:#enter
					nop
					#do something

				j sai_fori
	sai_foro:	nop

	j screen_menu
