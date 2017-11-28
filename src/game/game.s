.data
	stage_ryu: .asciiz "../img/bin/stage_ryu.bin"
.text

#s3 = stage_file
g_start:nop
		li $s7, 10000
		jal music_init
		g_loopi:	beqz $s7, g_loopo

					jal music_play

					open_file($t9,stage_ryu)	#t9 = &file = open_file(s3)
					#open_filer($t9,$s3)						#t9 = &file = open_file(s3)
					read_file($t9,buffer1,80000)				#buffer1 = file
					close_file($t9)
					vga_print_full(buffer1,0,0)
	
					jal music_play

					player_print(player1,0)
					player_nxt_frame(player1)

					jal music_play

					player_print(player2,1)
					player_nxt_frame(player2)

					jal music_play

					add $s7, $s7, -1

					vga_refresh()

					jal music_play

					j g_loopi

		g_loopo:	j screen_menu
