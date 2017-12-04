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

					keyboard_upd()

					bu_get_val(wasd,0,$t0)#w
					keyboard_check_j($t0,p1_w)
					bu_get_val(wasd,1,$t0)#a
					keyboard_check_j($t0,p1_a)
					bu_get_val(wasd,2,$t0)#s
					keyboard_check_j($t0,p1_s)
					bu_get_val(wasd,3,$t0)#d
					keyboard_check_j($t0,p1_d)
					player_action(player1,pa_0,p1_done)
		p1_w:		player_action(player1,pa_w,p1_done)
		p1_a:		player_action(player1,pa_a,p1_done)
		p1_s:		player_action(player1,pa_s,p1_done)
		p1_d:		player_action(player1,pa_d,p1_done)
		p1_done:	player_action(player1,pa_done,p1_after)
		p1_after:	nop



					bu_get_val(ijkl,0,$t0)#w
					keyboard_check_j($t0,p2_w)
					bu_get_val(ijkl,1,$t0)#a
					keyboard_check_j($t0,p2_a)
					bu_get_val(ijkl,2,$t0)#s
					keyboard_check_j($t0,p2_s)
					bu_get_val(ijkl,3,$t0)#d
					keyboard_check_j($t0,p2_d)

					player_action(player2,pa_0,p2_done)
		p2_w:		player_action(player2,pa_w,p2_done)
		p2_a:		player_action(player2,pa_a,p2_done)
		p2_s:		player_action(player2,pa_s,p2_done)
		p2_d:		player_action(player2,pa_d,p2_done)
		p2_done:	player_action(player2,pa_done,p2_after)
		p2_after:	nop

					jal music_play

					j g_loopi

		g_loopo:	j screen_menu
