.text

#s3 = stage_file
g_start:nop
		li $s7, 15
		g_loopi:	beqz $s7, g_loopo

					#printr($s3)
					open_filer($t9,$s3)							#t9 = &file = open_file(s3)
					read_file($t9,buffer1,80000)				#buffer1 = file
					close_file($t9)
					cpy_mem(buffer1,VGAsz,VGA)

					#get_time($s5)
					player_print(player1,0)
					player_nxt_frame(player1)
					#get_time($s6)
					#sub $s6, $s6, $s5
					#print_int($s6)

					player_print(player2,1)
					player_nxt_frame(player2)

					add $s7, $s7, -1
					sleep(175)
					j g_loopi

		g_loopo:	j screen_menu
