.eqv PLAYER_CHAR		0
.eqv PLAYER_X			2
.eqv PLAYER_Y			4
.eqv PLAYER_HP			6
.eqv PLAYER_HP_MAX		8
.eqv PLAYER_ANIM		10
.eqv PLAYER_ANIM_FRAME	12
.eqv PLAYER_SPD_VERT	14
.eqv PLAYER_PROJ_X		16
.eqv PLAYER_PROJ_Y		18
.eqv PLAYER_PROJ_FRAME	20
.eqv PLAYER_DAMAGED		22

.eqv PLAYER_DATA_SPACE	24

.data
	.word 0 #align
	player1: .space PLAYER_DATA_SPACE
	.word 0 #align
	player2: .space PLAYER_DATA_SPACE
	.word 0 #align

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
		player_set_info(player1,PLAYER_PROJ_X,0)
		player_set_info(player2,PLAYER_PROJ_X,0)
		player_set_info(player1,PLAYER_PROJ_Y,0)
		player_set_info(player2,PLAYER_PROJ_Y,0)
		player_set_info(player1,PLAYER_PROJ_FRAME,-1)
		player_set_info(player2,PLAYER_PROJ_FRAME,-1)
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
player_print_:push($ra)					#t0 = player1
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

	push($t0)
	push($t7)

	vga_print_h($a0, $t2, $t3, $t9)

	pop($t7)
	pop($t0)


	select_sprite($t7,ANIM_PROJECTILE,-1,$t8)	#t8 = quant frames
	beq $t8, 0, player_print_end

	lh $t1, PLAYER_PROJ_FRAME($t0)				#t1 = frame
	player_get_infor($t0,PLAYER_PROJ_X,$t2)		#t2 = x
	player_get_infor($t0,PLAYER_PROJ_Y,$t3)		#t3 = y

	beq $t1, -1, player_print_end

												#t7 = sprites_ryu1
	select_sprite($t7,ANIM_PROJECTILE,$t1,$t8)	#t8 = "../img/bin/sprites/ryu/projectile0_1.bin"

	print("projetil: '")
	printr($t8)
	print("'\n")
	print_int($t1)
	print_int($t3)

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


player_print_end:pop($ra)
	jr $ra

.macro player_nxt_frame(%player)
	la $t0, %player
	jal player_nxt_frame_
.end_macro
.macro player_nxt_framer(%player)
	add $t0, $zero, %player
	jal player_nxt_frame_
.end_macro
player_nxt_frame_:push($ra)						#t0 = player1
	player_get_infor($t0,PLAYER_CHAR,$t1)		#t1 = 0 #ryu
	player_get_infor($t0,PLAYER_ANIM,$t2)		#t2 = anim_iddle
	player_get_infor($t0,PLAYER_ANIM_FRAME,$t3)	#t3 = frame_0

	select_sprites($t1,$t4,0)					#t4 = sprites_ryu
	select_sprite($t4,$t2,-1,$t5)				#t5 = ANIM_IDLE_LEN # 2

	add $t3, $t3, 1								#t3++
	bne $t3, $t5, player_nxt_frame_save			#t3 %= t5
	li $t3, 0
player_nxt_frame_save:player_set_infor($t0,PLAYER_ANIM_FRAME,$t3)
	lh $t3, PLAYER_PROJ_FRAME($t0)	#t3 = frame_0
	beq $t3, -1, player_nxt_frame_save1
	select_sprite($t4,ANIM_PROJECTILE,-1,$t5)	#t5 = ANIM_PROJECTILE_LEN # 2
	add $t3, $t3, 1								#t3++

	bne $t3, $t5, player_nxt_frame_save1		#t3 %= t5
	li $t3, 0
player_nxt_frame_save1:player_set_infor($t0,PLAYER_PROJ_FRAME,$t3)
	pop($ra)
	jr $ra



.macro player_action(%player,%addr,%fail,%sucess)
	la $t9, %player
	li $v0, 0
	jal %addr
	beqz $v0, %fail
	j %sucess
.end_macro
.macro player_actionr(%player,%addr,%fail,%sucess)
	add $t9, $zero %player
	li $v0, 0
	jal %addr
	beqz $v0, %fail
	j %sucess
.end_macro
pa_w: nop#jump
	player_get_infor($t9,PLAYER_ANIM,$t0)
	beq $t0, ANIM_IDLE, pa_w1
	beq $t0, ANIM_BLOCK, pa_w1
	beq $t0, ANIM_WALKING, pa_w1
	jr $ra
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
	li $v0, 1
	jr $ra

pa_a: nop#walk left
	player_get_infor($t9,PLAYER_Y,$t0)
	bne $t0, GROUND_Y pa_jr_ra
	player_get_infor($t9,PLAYER_ANIM,$t0)
	beq $t0, ANIM_IDLE, pa_a1
	beq $t0, ANIM_BLOCK, pa_a1
	beq $t0, ANIM_WALKING, pa_a2
	jr $ra
pa_a1: nop
	player_set_infor($t9,PLAYER_ANIM,ANIM_WALKING)
	player_set_infor($t9,PLAYER_ANIM_FRAME,0)
pa_a2: nop
	player_get_infor($t9,PLAYER_X,$t0)
	sub	$t0, $t0, 15
	max($t0, $zero)
	player_set_infor($t9,PLAYER_X,$t0)
	li $v0, 1
	jr $ra

pa_s: nop#block
	player_get_infor($t9,PLAYER_Y,$t0)
	bne $t0, GROUND_Y pa_jr_ra
	player_get_infor($t9,PLAYER_ANIM,$t0)
	beq $t0, ANIM_IDLE, pa_s1
	beq $t0, ANIM_WALKING, pa_s1
	jr $ra
pa_s1: nop
	player_set_infor($t9,PLAYER_ANIM,ANIM_BLOCK)
	player_set_infor($t9,PLAYER_ANIM_FRAME,0)
	li $v0, 1
	jr $ra

pa_d: nop#walk right
	player_get_infor($t9,PLAYER_Y,$t0)
	bne $t0, GROUND_Y pa_jr_ra
	player_get_infor($t9,PLAYER_ANIM,$t0)
	beq $t0, ANIM_IDLE, pa_d1
	beq $t0, ANIM_BLOCK, pa_d1
	beq $t0, ANIM_WALKING, pa_d2
	jr $ra
pa_d1: nop
	player_set_infor($t9,PLAYER_ANIM,ANIM_WALKING)
	player_set_infor($t9,PLAYER_ANIM_FRAME,0)
pa_d2: nop
	player_get_infor($t9,PLAYER_X,$t0)
	add	$t0, $t0, 15
	min($t0, 230)
	player_set_infor($t9,PLAYER_X,$t0)
	li $v0, 1
	jr $ra

pa_punch: nop
	player_get_infor($t9,PLAYER_Y,$t0)
	player_get_infor($t9,PLAYER_ANIM,$t1)
	bne $t0, GROUND_Y pa_punch2
	beq $t1, ANIM_IDLE, pa_punch1
	beq $t1, ANIM_BLOCK, pa_punch1
	beq $t1, ANIM_WALKING, pa_punch1
	jr $ra
pa_punch1: nop
	player_set_infor($t9,PLAYER_ANIM,ANIM_SPUNCH)
	player_set_infor($t9,PLAYER_ANIM_FRAME,0)
	player_set_infor($t9,PLAYER_DAMAGED,0)
	li $v0, 1
	jr $ra
pa_punch2: nop
	bne $t1, ANIM_JUMP, pa_jr_ra
	player_set_infor($t9,PLAYER_ANIM,ANIM_JPUNCH)
	player_set_infor($t9,PLAYER_ANIM_FRAME,0)
	player_set_infor($t9,PLAYER_DAMAGED,0)
	li $v0, 1
	jr $ra

pa_kick: nop
	player_get_infor($t9,PLAYER_Y,$t0)
	player_get_infor($t9,PLAYER_ANIM,$t1)
	bne $t0, GROUND_Y pa_kick2
	beq $t1, ANIM_IDLE, pa_kick1
	beq $t1, ANIM_BLOCK, pa_kick1
	beq $t1, ANIM_WALKING, pa_kick1
	jr $ra
pa_kick1: nop
	player_set_infor($t9,PLAYER_ANIM,ANIM_SKICK)
	player_set_infor($t9,PLAYER_ANIM_FRAME,0)
	player_set_infor($t9,PLAYER_DAMAGED,0)
	li $v0, 1
	jr $ra
pa_kick2: nop
	bne $t1, ANIM_JUMP, pa_jr_ra
	player_set_infor($t9,PLAYER_ANIM,ANIM_JKICK)
	player_set_infor($t9,PLAYER_ANIM_FRAME,0)
	player_set_infor($t9,PLAYER_DAMAGED,0)
	li $v0, 1
	jr $ra

pa_spec: nop
	player_get_infor($t9,PLAYER_Y,$t0)
	player_get_infor($t9,PLAYER_ANIM,$t1)
	lh $t2, PLAYER_PROJ_FRAME($t9)
	bne $t2, -1 pa_jr_ra
	bne $t0, GROUND_Y pa_jr_ra
	beq $t1, ANIM_IDLE, pa_spec1
	beq $t1, ANIM_BLOCK, pa_spec1
	beq $t1, ANIM_WALKING, pa_spec1
	jr $ra
pa_spec1: nop
	player_set_infor($t9,PLAYER_ANIM,ANIM_POWER)
	player_set_infor($t9,PLAYER_ANIM_FRAME,0)
	player_set_infor($t9,PLAYER_PROJ_FRAME,0)
	add $t0, $t0, -30
	player_set_infor($t9,PLAYER_PROJ_Y,$t0)
	player_get_infor($t9,PLAYER_X,$t0)
	player_set_infor($t9,PLAYER_PROJ_X,$t0)
	li $v0, 1
	jr $ra

pa_0: nop#idle
	player_get_infor($t9,PLAYER_ANIM,$t0)
	beq $t0, ANIM_BLOCK, pa_01
	beq $t0, ANIM_WALKING, pa_01
	beq $t0, ANIM_SPUNCH, pa_01
	beq $t0, ANIM_SKICK, pa_01
	beq $t0, ANIM_POWER, pa_02
	jr $ra
pa_01: nop
	player_set_infor($t9,PLAYER_ANIM,ANIM_IDLE)
	player_set_infor($t9,PLAYER_ANIM_FRAME,0)
	jr $ra
pa_02: nop
	push($ra)
	player_get_infor($t9,PLAYER_CHAR,$t1)
	select_sprites($t1,$t1,0)
	select_sprite($t1,ANIM_POWER,-1,$t1)
	sub $t1, $t1, 1
	player_get_infor($t9,PLAYER_ANIM_FRAME,$t0)
	pop($ra)
	beq $t0, $t1, pa_01
	jr $ra

pa_done: nop
	lh $t0, PLAYER_SPD_VERT($t9)
	player_get_infor($t9,PLAYER_Y,$t1)
	beq $t1, GROUND_Y, pa_jr_ra
	add $t1, $t1, $t0
	bge $t1, GROUND_Y, pa_done1
	add $t0, $t0, 20
	player_set_infor($t9,PLAYER_SPD_VERT,$t0)
	player_set_infor($t9,PLAYER_Y,$t1)
	jr $ra
pa_done1: nop
	player_set_infor($t9,PLAYER_SPD_VERT,$zero)
	player_set_infor($t9,PLAYER_Y,GROUND_Y)
	player_set_infor($t9,PLAYER_ANIM,ANIM_IDLE)
	player_set_infor($t9,PLAYER_ANIM_FRAME,0)


pa_jr_ra: jr $ra


.macro player_check_action(%player,%keys)
	la $t8, %player
	la $t9, %keys
	jal player_check_action_
.end_macro
player_check_action_:
			push($ra)
	pw_:	bu_get_valr($t9,0,$t0)#w
			keyboard_check_j($t0,pw)
	pa_:	bu_get_valr($t9,1,$t0)#a
			keyboard_check_j($t0,pa)
	ps_:	bu_get_valr($t9,2,$t0)#s
			keyboard_check_j($t0,ps)
	pd_:	bu_get_valr($t9,3,$t0)#d
			keyboard_check_j($t0,pd)
	pq_:	bu_get_valr($t9,4,$t0)#q
			keyboard_check_j($t0,ppunch)
	pe_:	bu_get_valr($t9,5,$t0)#e
			keyboard_check_j($t0,pkick)
	pz_:	bu_get_valr($t9,6,$t0)#z
			keyboard_check_j($t0,pspec)
			player_actionr($t8,pa_0,pdone,pdone)
	pw:		player_actionr($t8,pa_w,pa_,pdone)
	pa:		player_actionr($t8,pa_a,ps_,pdone)
	ps:		player_actionr($t8,pa_s,pd_,pdone)
	pd:		player_actionr($t8,pa_d,pq_,pdone)
	ppunch:	player_actionr($t8,pa_punch,pe_,pdone)
	pkick:	player_actionr($t8,pa_kick,pz_,pdone)
	pspec:	player_actionr($t8,pa_spec,pdone,pdone)
	pdone:	player_actionr($t8,pa_done,pafter,pafter)
	pafter:	nop
			pop($ra)
			jr $ra

.macro player_move_projectile(%player,%x)
	la $a0, %player
	add $a1, $zero, %x
	push($ra)
	jal player_move_projectile_
	pop($ra)
.end_macro
.macro player_move_projectile2(%player,%x)
	la $a0, %player
	add $a1, $zero, -%x
	push($ra)
	jal player_move_projectile_
	pop($ra)
.end_macro
player_move_projectile_: nop
	lh $a2, PLAYER_PROJ_FRAME($a0)
	beq $a2, -1, pmp_jr_ra
	lh $a2, PLAYER_PROJ_X($a0)
	add $a2, $a2, $a1
	bgt $a2, 280 player_move_projectile_1
	blt $a2, 0, player_move_projectile_1
	sh $a2, PLAYER_PROJ_X($a0)
pmp_jr_ra:	jr $ra
player_move_projectile_1: nop
	li $a2, -1
	sh $a2, PLAYER_PROJ_FRAME($a0)
	jr $ra



.macro player_check_collision(%atk, %def)
	la $a0, %atk
	la $a1, %def
	jal player_check_collision_
.end_macro
player_check_collision_: nop
	player_get_infor($a0,PLAYER_ANIM,$t0)
	player_get_infor($a0,PLAYER_DAMAGED,$t1)
	beq $t1, 1, player_check_collision_proj
	beq $t0, ANIM_SPUNCH, player_check_collision_1
	beq $t0, ANIM_JPUNCH, player_check_collision_1
	beq $t0, ANIM_SKICK, player_check_collision_1
	beq $t0, ANIM_JKICK, player_check_collision_1
	j player_check_collision_proj
player_check_collision_1: nop
	player_get_infor($a0,PLAYER_X,$t0)
	player_get_infor($a1,PLAYER_X,$t1)
	sub $t0, $t0, $t1
	bge $t0, $zero, player_check_collision_2
	sub $t0, $zero, $t0
player_check_collision_2: nop
	bgt $t0, 50, player_check_collision_proj
	player_get_infor($a1,PLAYER_HP,$t1)
	sub $t1, $t1, 20
	max($t1,$zero)
	player_set_infor($a1,PLAYER_HP,$t1)
	player_set_infor($a0,PLAYER_DAMAGED,1)
player_check_collision_proj: nop
	lh $t0, PLAYER_PROJ_FRAME($a0)
	beq $t0, -1, pcc_jr_ra
	player_get_infor($a0,PLAYER_PROJ_X,$t0)
	player_get_infor($a1,PLAYER_X,$t1)
	sub $t0, $t0, $t1
	bge $t0, $zero, player_check_collision_proj1
	sub $t0, $zero, $t0
player_check_collision_proj1: nop
	bgt $t0, 25, pcc_jr_ra
	player_get_infor($a1,PLAYER_HP,$t1)
	sub $t1, $t1, 30
	max($t1,$zero)
	player_set_infor($a1,PLAYER_HP,$t1)
	player_set_infor($a0,PLAYER_PROJ_FRAME,-1)
pcc_jr_ra: jr $ra
