.eqv PLAYER_CHAR		0
.eqv PLAYER_X			2
.eqv PLAYER_Y			4
.eqv PLAYER_HP			6
.eqv PLAYER_HP_MAX		8
.eqv PLAYER_ANIM		10
.eqv PLAYER_ANIM_FRAME	12
.eqv PLAYER_SPD_VERT	14

.eqv PLAYER_DATA_SPACE	16

.data
	player1: .space PLAYER_DATA_SPACE
	player2: .space PLAYER_DATA_SPACE

.macro player_set_info(%player, %info, %val)
	la $at, %player
	add $v0, $zero, %val
	sh $v0, %info($at)
.end_macro
.macro player_set_infor(%player, %info, %val)
	add $v0, $zero, %val
	sh $v0, %info(%player)
.end_macro

.macro player_get_info(%player, %info, %reg)
	la $at, %player
	lh %reg, %info($at)
.end_macro
.macro player_get_infor(%player, %info, %reg)
	lh %reg, %info(%player)
.end_macro

.macro player_init_info(%p1, %p2)
	add $a0, $zero, %p1
	add $a1, $zero, %p2
	jal player_init_info_
.end_macro
.text
	player_init_info_:
		player_set_info(player1,PLAYER_CHAR,$a0)
		player_set_info(player2,PLAYER_CHAR,$a1)
		player_set_info(player1,PLAYER_X,50)
		player_set_info(player2,PLAYER_X,250)
		player_set_info(player1,PLAYER_Y,130)
		player_set_info(player2,PLAYER_Y,130)
		player_set_info(player1,PLAYER_HP,100)
		player_set_info(player1,PLAYER_HP_MAX,100)
		ble $a1, 7, normal_hp #7 is the last non boss
	boss_hp:
		sub $v0, $a1, 7
		mul $v0, $v0, 25
		add $v0, $v0, 100
		player_set_info(player2,PLAYER_HP,$v0)
		player_set_info(player2,PLAYER_HP_MAX,$v0)
		j after_hp
	normal_hp:
		player_set_info(player2,PLAYER_HP,100)
		player_set_info(player2,PLAYER_HP_MAX,100)
		j after_hp
	after_hp:
		player_set_info(player1,PLAYER_ANIM,ANIM_IDLE)
		player_set_info(player2,PLAYER_ANIM,ANIM_IDLE)
		player_set_info(player1,PLAYER_ANIM_FRAME,0)
		player_set_info(player2,PLAYER_ANIM_FRAME,1)
		player_set_info(player1,PLAYER_SPD_VERT,0)
		player_set_info(player2,PLAYER_SPD_VERT,0)
		jr $ra


.macro player_print(%player,%mirror)
	la  $t0, %player
	add $t7, $zero, %mirror
	jal player_print_
.end_macro
.macro player_printr(%player,%mirror)
	add $t0, $zero, %player
	add $t7, $zero, %mirror
	jal player_print_
.end_macro
player_print_:sw $ra 0($sp)						#t0 = player1
	player_get_infor($t0,PLAYER_CHAR,$t1)		#t1 = 0 #ryu
	player_get_infor($t0,PLAYER_X,$t2)			#t2 = x
	player_get_infor($t0,PLAYER_Y,$t3)			#t3 = y
	player_get_infor($t0,PLAYER_HP,$t4)			#t4 = 100
	player_get_infor($t0,PLAYER_ANIM,$t5)		#t5 = anim_iddle
	player_get_infor($t0,PLAYER_ANIM_FRAME,$t6)	#t6 = frame_0

	ble $t4, $zero, player_print_end

	select_sprites($t1,$t7,$t7)					#t7 = sprites_ryu1
	select_sprite($t7,$t5,$t6,$t8)				#t8 = "../img/bin/sprites/ryu/iddle0_1.bin"

	open_filer($t9,$t8)							#t9 = &file = open_file(t8)
	read_file($t9,buffer1,80000)				#buffer1 = file
	close_file($t9)


	mod($a2,$t2,4)
	sub $t2, $t2, $a2


	la $a0, buffer1

	#lw $t8, 0($a0)#w, always 320
	lw $t9, 4($a0)#h
	add $a0, $a0, 8

	la $a1, VGA		  #VGA[0][0]

	add $a1, $a1, $t2 #VGA[x][0]
	mul $a2, $t3, VGAw
	add $a1, $a1, $a2 #VGA[x][y]

	la $a2, VGAend	  #VGA[0][H] = vga last pos + 1

	mul $t9, $t9, VGAw
	add $t9, $t9, $a1 #VGA[0][h] = file last pos + 1

	min($a2,$t9)

	cpy_mem_end($a0,$a1,$a2)
player_print_end:lw $ra 0($sp)
	jr $ra

.macro player_nxt_frame(%player)
	la $t0, %player
	jal player_nxt_frame_
.end_macro
.macro player_nxt_framer(%player)
	add $t0, $zero, %player
	jal player_nxt_frame_
.end_macro
player_nxt_frame_:sw $ra 0($sp)					#t0 = player1
	player_get_infor($t0,PLAYER_CHAR,$t1)		#t1 = 0 #ryu
	player_get_infor($t0,PLAYER_ANIM,$t2)		#t2 = anim_iddle
	player_get_infor($t0,PLAYER_ANIM_FRAME,$t3)	#t3 = frame_0

	select_sprites($t1,$t4,0)					#t4 = sprites_ryu
	select_sprite($t4,$t2,-1,$t5)				#t5 = ANIM_IDLE_LEN # 2

	add $t3, $t3, 1								#t3++
	bne $t3, $t5, player_nxt_frame_save			#t3 %= t5
	li $t3, 0
player_nxt_frame_save:player_set_infor($t0,PLAYER_ANIM_FRAME,$t3)
	lw $ra 0($sp)
	jr $ra
