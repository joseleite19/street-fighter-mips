.eqv PLAYER_CHAR		0
.eqv PLAYER_X			2
.eqv PLAYER_Y			4
.eqv PLAYER_HP			6
.eqv PLAYER_HP_MAX		8
.eqv PLAYER_ANIM		10
.eqv PLAYER_ANIM_FRAME	12

.eqv PLAYER_DATA_SPACE	16 #14

.data
	player1: .space PLAYER_DATA_SPACE
	player2: .space PLAYER_DATA_SPACE

.macro set_player_info(%player, %info, %val)
	la $at, %player
	add $v0, $zero, %val
	sh $v0, %info($at)
.end_macro

.macro get_player_info(%player, %info, %reg)
	la $at, %player
	lh %reg, %info($at)
.end_macro

.macro init_player_info(%p1, %p2)
	add $a0, $zero, %p1
	add $a1, $zero, %p2
	jal init_player_info_
.end_macro
.text
	init_player_info_:
		set_player_info(player1,PLAYER_CHAR,$a0)
		set_player_info(player2,PLAYER_CHAR,$a1)
		set_player_info(player1,PLAYER_X,10)
		set_player_info(player2,PLAYER_X,310)
		set_player_info(player1,PLAYER_Y,10)
		set_player_info(player2,PLAYER_Y,10)
		set_player_info(player1,PLAYER_HP,100)
		set_player_info(player1,PLAYER_HP_MAX,100)
		ble $a1, 7, normal_hp #7 is the last non boss
	boss_hp:
		sub $v0, $a1, 7
		mul $v0, $v0, 25
		add $v0, $v0, 100
		set_player_info(player2,PLAYER_HP,$v0)
		set_player_info(player2,PLAYER_HP_MAX,$v0)
		j after_hp
	normal_hp:
		set_player_info(player2,PLAYER_HP,100)
		set_player_info(player2,PLAYER_HP_MAX,100)
		j after_hp
	after_hp:
		set_player_info(player1,PLAYER_ANIM,ANIM_IDLE)
		set_player_info(player2,PLAYER_ANIM,ANIM_IDLE)
		set_player_info(player1,PLAYER_ANIM_FRAME,0)
		set_player_info(player2,PLAYER_ANIM_FRAME,0)
		jr $ra
