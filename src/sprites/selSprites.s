.text

.macro select_sprites(%char,%reg)
	add $a0, $zero, %char
	jal select_sprites_
	move %reg, $v0
.end_macro
select_sprites_:nop
	la $v0, all_sprites
	sll $a0, $a0, 2
	add $v0, $v0, $a0
	lw $v0, 0($v0)
	jr $ra
.macro select_sprite(%char_spr,%anim_ind,%anim_frame,%reg)
	add $a0, $zero, %char_spr
	add $a1, $zero, %anim_ind
	add $a2, $zero, %anim_frame
	jal select_sprite
	move %reg, $v0
.end_macro
select_sprite:nop
	sll $a1, $a1, 2
	add $a2, $a2, 1
	sll $a2, $a2, 2
	add $v0, $a0, $a1
	lw $v0, 0($v0)
	add $v0, $v0, $a2
	lw $v0, 0($v0)
	jr $ra
