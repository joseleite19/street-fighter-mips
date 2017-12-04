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
	lhu %reg, %info($at)
.end_macro
.macro player_get_infor(%player, %info, %reg)
	lhu %reg, %info(%player)
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
		player_set_info(player1,PLAYER_Y,GROUND_Y)
		player_set_info(player2,PLAYER_Y,GROUND_Y)
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

	sub $t3, $t3, $t9

	vga_print_h($a0, $t2, $t3, $t9)
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



.macro player_action(%player,%addr,%after)
	la $t9, %player
	jal %addr
	j %after
.end_macro
pa_w: nop#jump
	print("pa_w\n")
	player_get_infor($t9,PLAYER_ANIM,$t0)
	beq $t0, ANIM_IDLE, pa_w1
	beq $t0, ANIM_BLOCK, pa_w1
	beq $t0, ANIM_WALKING, pa_w1
	j pa_jr_ra
pa_w1: nop
	player_get_infor($t9,PLAYER_Y,$t0)
	bne $t0, GROUND_Y pa_jr_ra
	sub	$t0, $t0, 30
	player_set_infor($t9,PLAYER_Y,$t0)
	player_get_infor($t9,PLAYER_SPD_VERT,$t0)
	sub $t0, $t0, 30
	player_set_infor($t9,PLAYER_SPD_VERT,$t0)
	player_set_infor($t9,PLAYER_ANIM,ANIM_JUMP)
	player_set_infor($t9,PLAYER_ANIM_FRAME,0)
	j pa_jr_ra

pa_a: nop#walk left
	print("pa_a\n")
	player_get_infor($t9,PLAYER_Y,$t0)
	bne $t0, GROUND_Y pa_jr_ra
	player_get_infor($t9,PLAYER_ANIM,$t0)
	beq $t0, ANIM_IDLE, pa_a1
	beq $t0, ANIM_BLOCK, pa_a1
	beq $t0, ANIM_WALKING, pa_a2
	j pa_jr_ra
pa_a1: nop
	player_set_infor($t9,PLAYER_ANIM,ANIM_WALKING)
	player_set_infor($t9,PLAYER_ANIM_FRAME,0)
pa_a2: nop
	player_get_infor($t9,PLAYER_X,$t0)
	sub	$t0, $t0, 5
	max($t0, $zero)
	player_set_infor($t9,PLAYER_X,$t0)
	j pa_jr_ra

pa_s: nop#block
	print("pa_s\n")
	player_get_infor($t9,PLAYER_Y,$t0)
	bne $t0, GROUND_Y pa_jr_ra
	player_get_infor($t9,PLAYER_ANIM,$t0)
	beq $t0, ANIM_IDLE, pa_s1
	beq $t0, ANIM_WALKING, pa_s1
	j pa_jr_ra
pa_s1: nop
	player_set_infor($t9,PLAYER_ANIM,ANIM_BLOCK)
	player_set_infor($t9,PLAYER_ANIM_FRAME,0)
	j pa_jr_ra

pa_d: nop#walk right
	print("pa_d\n")
	player_get_infor($t9,PLAYER_Y,$t0)
	bne $t0, GROUND_Y pa_jr_ra
	player_get_infor($t9,PLAYER_ANIM,$t0)
	beq $t0, ANIM_IDLE, pa_d1
	beq $t0, ANIM_BLOCK, pa_d1
	beq $t0, ANIM_WALKING, pa_d2
	j pa_jr_ra
pa_d1: nop
	player_set_infor($t9,PLAYER_ANIM,ANIM_WALKING)
	player_set_infor($t9,PLAYER_ANIM_FRAME,0)
pa_d2: nop
	player_get_infor($t9,PLAYER_X,$t0)
	add	$t0, $t0, 5
	min($t0, 230)
	player_set_infor($t9,PLAYER_X,$t0)
	j pa_jr_ra

pa_0: nop#idle
	print("pa_0\n")
	player_get_infor($t9,PLAYER_ANIM,$t0)
	beq $t0, ANIM_WALKING, pa_01
	beq $t0, ANIM_BLOCK, pa_01
	j pa_jr_ra
pa_01: nop
	player_set_infor($t9,PLAYER_ANIM,ANIM_IDLE)
	player_set_infor($t9,PLAYER_ANIM_FRAME,0)
	j pa_jr_ra

pa_done: nop
	print("pa_done\n")
	lh $t0, PLAYER_SPD_VERT($t9)
	player_get_infor($t9,PLAYER_Y,$t1)
	print_int($t0)
	print_int($t1)
	beq $t1, GROUND_Y, pa_jr_ra
	add $t1, $t1, $t0
	bge $t1, GROUND_Y, pa_done1
	add $t0, $t0, 20
	player_set_infor($t9,PLAYER_SPD_VERT,$t0)
	player_set_infor($t9,PLAYER_Y,$t1)
	j pa_jr_ra
pa_done1: nop
	player_set_infor($t9,PLAYER_SPD_VERT,$zero)
	player_set_infor($t9,PLAYER_Y,GROUND_Y)
	player_set_infor($t9,PLAYER_ANIM,ANIM_IDLE)
	player_set_infor($t9,PLAYER_ANIM_FRAME,0)



pa_jr_ra: jr $ra
