.text

#s3 = stage_file
g_start:nop
		jal music_init
		g_loopi:	jal music_play

					open_filer($t9,$s3)					#t9 = &file = open_file(s3)
					read_file($t9,buffer1,80000)		#buffer1 = file
					close_file($t9)
					vga_print_full(buffer1,0,0)

					jal music_play

					player_print(player1,0)
					player_nxt_frame(player1)

					jal music_play

					player_print(player2,1)
					player_nxt_frame(player2)

					jal music_play

					player_get_info(player1,PLAYER_HP_MAX,$v0)
					print_rect_full(11,6,$v0,10,BLACK)
					player_get_info(player1,PLAYER_HP,$v0)
					sub $v0, $v0, 2
					print_rect_full(12,7,$v0,8,RED)

					jal music_play

					player_get_info(player2,PLAYER_HP_MAX,$v0)
					li $v1, VGAw
					sub $v1, $v1, $v0
					sub $v1, $v1, 11
					print_rect_full($v1,6,$v0,10,BLACK)
					player_get_info(player2,PLAYER_HP,$v0)
					add $v1, $v1, 1
					sub $v0, $v0, 2
					print_rect_full($v1,7,$v0,8,RED)

					jal music_play

					vga_refresh()

					jal music_play

					prints("oo",150,10,WHITE)

					jal music_play

					keyboard_upd()

					jal music_play

					player_move_projectile(player1,28)
					player_move_projectile2(player2,28)

					jal music_play

					player_check_action(player1,p1keys)

					jal music_play

					player_check_action(player2,p2keys)

					jal music_play

					player_check_collision(player1,player2)
					player_check_collision(player2,player1)

					jal music_play

					player_get_info(player1,PLAYER_HP,$t0)
					beqz $t0, g_loopo
					player_get_info(player2,PLAYER_HP,$t0)
					beqz $t0, g_loopo

					jal music_play

					j g_loopi

		g_loopo:	j screen_menu
