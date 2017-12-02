.eqv _VGA 0xFF000000
.eqv _VGAend 0xFF012C00
.eqv VGAw 320
.eqv VGAh 240
.eqv VGAsz 76800#320 * 240

.eqv KB_ADD  0xFF100004
.eqv KB_ADD1 0xFF100100
.eqv KB_ADD2 0xFF100104

.eqv INV 0xc7
.eqv BLACK 0x00
.eqv WHITE 0xff
.eqv RED 0x07

.eqv GROUND_Y 210

.eqv CHAR_Z 25
.eqv CHAR_X 23

.data
	screen_sz: .word 320 240

	letters: .asciiz "abcdefghijklmnopqrstuvwxyz"
	numbers: .asciiz "0123456789"
	wasd: .asciiz "wasd"
	enter: .asciiz "f"

	.word 0#align

	VGA: .space VGAsz
	VGAend: .space 4

	KEYBOARD: .space 4
.text

.macro sysc(%code)
	add $v0, $zero, %code
	syscall
.end_macro

.macro min(%reg1,%reg2)
	add $v0, $zero, %reg2
	blt %reg1, $v0, min_end
	move %reg1, $v0
	min_end: nop
.end_macro

.macro max(%reg1,%reg2)
	add $v0, $zero, %reg2
	bgt %reg1, $v0, max_end
	move %reg1, $v0
	max_end: nop
.end_macro


.macro midi(%pitch, %duration, %instrument, %volume)
	add $a0, $zero, %pitch
	add $a1, $zero, %duration
	add $a2, $zero, %instrument
	add $a3, $zero, %volume
	sysc(31)
.end_macro

.macro w_get_val(%adr, %ind, %reg)
	la $a0, %adr
	add $a0, $a0, %ind
	add $a0, $a0, %ind
	add $a0, $a0, %ind
	add $a0, $a0, %ind
	lw %reg, 0($a0)
.end_macro

.macro w_set_val(%adr, %ind, %val)
	la $a0, %adr
	add $a0, $a0, %ind
	add $a0, $a0, %ind
	add $a0, $a0, %ind
	add $a0, $a0, %ind
	sw %val, 0($a0)
.end_macro

.macro h_get_val(%adr, %ind, %reg)
	la $a0, %adr
	add $a0, $a0, %ind
	add $a0, $a0, %ind
	lh %reg, 0($a0)
.end_macro

.macro hu_get_val(%adr, %ind, %reg)
	la $a0, %adr
	add $a0, $a0, %ind
	add $a0, $a0, %ind
	lhu %reg, 0($a0)
.end_macro

.macro h_set_val(%adr, %ind, %val)
	la $a0, %adr
	add $a0, $a0, %ind
	add $a0, $a0, %ind
	sh %val, 0($a0)
.end_macro

.macro b_get_val(%adr, %ind, %reg)
	la $a0, %adr
	add $a0, $a0, %ind
	lb %reg, 0($a0)
.end_macro

.macro bu_get_val(%adr, %ind, %reg)
	la $a0, %adr
	add $a0, $a0, %ind
	lbu %reg, 0($a0)
.end_macro

.macro b_set_val(%adr, %ind, %val)
	la $a0, %adr
	add $a0, $a0, %ind
	sh %val, 0($a0)
.end_macro



.macro fill_scr(%color)
	add $a0, $zero, %color
	jal _fill_screen
.end_macro
_fill_screen:
	#cor = $a0
	la $t0,VGAend
	la $t1,VGA
	sll $t2,$a0,8
	or $t2,$t2,$a0
	sll $t2,$t2,8
	or $t2,$t2,$a0
	sll $t2,$t2,8
	or $t2,$t2,$a0
	fill_loop:
		beq $t1,$t0,fill_fora
		sw $t2,0($t1)
		addi $t1,$t1,4
		j fill_loop
	fill_fora:
	jr $ra

.macro open_file(%store,%file)
	la $a0,%file
	jal _open_file
	add %store, $zero, $v0
.end_macro
.macro open_filer(%store,%file)
	move $a0, %file
	jal _open_file
	add %store, $zero, $v0
.end_macro
_open_file:
	li $a1,0
	li $a2,0
	sysc(13)
	jr $ra

.macro read_file(%address,%buffer,%mx_size)
	add $a0,$zero,%address
	la $a1, %buffer
	add $a2,$zero,%mx_size
	sysc(14)
.end_macro

.macro close_file(%address)
	add $a0, $zero, %address
	sysc(16)
.end_macro

.macro print(%str)
.data
	LABEL: .asciiz %str
.text
	la $a0, LABEL
	sysc(4)
.end_macro

.macro printr(%str)
.text
	add $a0, $zero, %str
	sysc(4)
.end_macro

.macro prints(%str,%x,%y,%color)
.data
	LABEL: .asciiz %str
.text
	la $a0, LABEL
	add $a1, $zero, %x
	add $a2, $zero, %y
	add $a3, $zero, %color
	sysc(104)
.end_macro

.macro printsr(%str,%x,%y,%color)
.text
	add $a0, $zero, %str
	add $a1, $zero, %x
	add $a2, $zero, %y
	add $a3, $zero, %color
	sysc(104)
.end_macro

.macro print_int(%int)
	add $a0, $zero, %int
	sysc(1)
	print("\n")
.end_macro

.macro prints_int(%int,%x,%y,%color)
	add $a0, $zero, %int
	add $a1, $zero, %x
	add $a2, $zero, %y
	add $a3, $zero, %color
	sysc(101)
.end_macro

.macro print_hex(%int)
	add $a0, $zero, %int
	sysc(34)
	print("\n")
.end_macro

.macro print_hexa(%int)
	la $a0, %int
	sysc(34)
	print("\n")
.end_macro

.macro print_image(%x,%y,%buffer,%size)
	add $a0, $zero, %x
	add $a1, $zero, %y
	la $t0, %buffer
	la $t9, %size
	jal _print_image
.end_macro
_print_image:
	la $t2, VGA			#t2 = VGA[0][0]
	lw $t3, 0($t9)		#t3 = w
	lw $t4, 4($t9)		#t4 = h
	add $t3, $a0, $t3	#t3 = x + w
	add $t4, $a1, $t4	#t4 = y + h
	#min($t3,VGAw)
	#min($t4,VGAh)
	mul $t4, $t4, VGAw


						#t1 = iterador loop x
	add $t3, $t3, $t2	#t3 = VGA[w][0]#fim loop x

	add $t2, $t2, $a0	#t2 = VGA[x][0]#iterador loop y
	add $t4, $t4, $t2	#t4 = VGA[x][h]#fim loop y

	for1b: beq $t2, $t4, for1e
		move $t1, $t2#t1 = VGA[x][j]#iterador loop x
		for2b: beq $t1, $t3, for2e
			lbu $t5, 0($t0)#t5 = pixel

			beq $t5, INV, noprint
			sb $t5, 0($t1)

			noprint:
			addi $t1, $t1, 1
			addi $t0, $t0, 1

			j for2b
		for2e:
		addi $t2, $t2, VGAw#t2 = VGA[0][j+1]#iterador loop y
		addi $t3, $t3, VGAw#t3 = VGA[w][j+1]#fim loop x
		j for1b
	for1e:
	jr $ra

.macro print_rect(%x,%y,%w,%h,%color)
	add $t0, $zero, %x
	add $t1, $zero, %y
	add $t2, $zero, %w
	add $t3, $zero, %h
	add $t4, $zero, %color
	jal print_rect_
.end_macro
print_rect_:
	la $t5, VGAw		#t5 = one line
	la $t6, VGA			#t6 = base address
	mul $t7, $t5, $t1	#t7 = y lines
	add $t7, $t7, $t0	#t7 = x + (y lines)
	add $t6, $t6, $t7	#t6 = vga[x][y]
	move $t7, $t6		#t7 = vga[x][y]
	mul $t8, $t5, $t3	#t8 = h lines
	add $t8, $t6, $t8	#t8 = vga[x][y+h]
	add $t9, $t6, $t2	#t9 = vga[x+w][y]
	for1i:	beq $t7, $t9, for1o
			sb $t4, 0($t7)
			sb $t4, 0($t8)
			add $t7, $t7, 1
			add $t8, $t8, 1
			j for1i
	for1o:	nop
	move $t8, $t6		#t8 = vga[x][y]
						#t9 = vga[x+w][y]
	mul $t7, $t5, $t3	#t7 = h lines
	add $t7, $t7, $t6	#t7 = vga[x][y+h]

	for2i:	beq $t8, $t7, for2o
			sb $t4, 0($t8)
			sb $t4, 0($t9)
			add $t8, $t8, $t5
			add $t9, $t9, $t5
			j for2i
	for2o:	nop

	jr $ra

.macro read_int(%reg)
	sysc(5)
	move %reg, $v0
.end_macro

.macro read_char(%reg)
	sysc(12)
	move %reg, $v0
.end_macro

.macro keyboard_upd()
	jal keyboard_upd_
.end_macro
keyboard_upd_:
	la $t0, KB_ADD
	lw $t1, 0($t0)
	sw $zero, 0($t0)

	la $t0, KEYBOARD
	sw $t1, 0($t0)
	jr $ra

.macro keyboard_check(%key,%reg)
	add $a0, $zero, %key
	jal keyboard_check_
	add %reg, $zero, $v0
.end_macro
.macro keyboard_check_j(%key,%jump)
	add $a0, $zero, %key
	jal keyboard_check_
	bne $v0, $zero, %jump
.end_macro
keyboard_check_:
	la $t0, KEYBOARD
	sb $t1, 0($t0)
	beq $t1, $a0, kb_check_yes
	sb $t1, 1($t0)
	beq $t1, $a0, kb_check_yes
	sb $t1, 2($t0)
	beq $t1, $a0, kb_check_yes
	sb $t1, 3($t0)
	beq $t1, $a0, kb_check_yes
	kb_check_no:li $v0, 0
				jr $ra
	kb_check_yes:li $v0, 1
				jr $ra

.macro read_wasd_enter(%reg)
	read_char($a0)
	jal read_wasd_enter_
	move %reg,$v0
.end_macro
read_wasd_enter_:
	bu_get_val(wasd,0,$a1)
	beq $a0, $a1, read__w
	bu_get_val(wasd,1,$a1)
	beq $a0, $a1, read__a
	bu_get_val(wasd,2,$a1)
	beq $a0, $a1, read__s
	bu_get_val(wasd,3,$a1)
	beq $a0, $a1, read__d
	bu_get_val(enter,0,$a1)
	beq $a0, $a1, read__enter
read__other:li $v0, -1
			jr $ra
read__w:	li $v0, 1
			jr $ra
read__s:	li $v0, 2
			jr $ra
read__a:	li $v0, 3
			jr $ra
read__d:	li $v0, 4
			jr $ra
read__enter:li $v0, 0
			jr $ra

.macro sleep(%time)
	add $a0, $zero, %time
	sysc(32)
.end_macro

.macro mod(%dest, %op, %dv)
	add $at, $zero, %op
	add %dest, $zero, %dv
	div $at, %dest
	mfhi %dest
.end_macro

.macro cpy_mem(%orig, %size, %dest)
	la $a0, %orig
	la $a1, %dest
	add $a2, $a0, %size
	jal cpy_mem_
.end_macro
.macro cpy_memr(%orig, %size, %dest)
	add $a0, $zero, %orig
	add $a1, $zero, %dest
	add $a2, $a0, %size
	jal cpy_mem_
.end_macro
.macro cpy_mem_end(%orig, %dest, %end)
	la $a0, %orig
	la $a1, %dest
	la $a2, %end
	jal cpy_mem_
.end_macro
.macro cpy_mem_endr(%orig, %dest, %end)
	add $a0, $zero, %orig
	add $a1, $zero, %dest
	add $a2, $zero, %end
	jal cpy_mem_
.end_macro
cpy_mem_:	lw $v0, 0($a0)
			sw $v0, 0($a1)
			add $a0, $a0, 4
			add $a1, $a1, 4
			beq $a2, $a0, jr_ra
			beq $a2, $a1, jr_ra
			j cpy_mem_
cpy_mem_b_:	lbu $v0, 0($a0)
			beq $v0, 0xc7 cpy_mem_bno
			sb $v0, 0($a1)
cpy_mem_bno:add $a0, $a0, 1
			add $a1, $a1, 1
			beq $a2, $a0, jr_ra
			beq $a2, $a1, jr_ra
			j cpy_mem_b_
jr_ra:		jr $ra


.macro get_time(%reg)
	sysc(30)
	add %reg, $zero, $a0
.end_macro

.macro vga_print_full(%orig, %x, %y)

	add $v0, $zero, %y
	mul $v0, $v0, VGAw
	add $v0, $v0, %x	#[x][y]

	la $a0, %orig		#orig[0][0]
	la $a1, VGA			#VGA[0][0]
	add $a1, $a1, $v0	#VGA[x][y]
	la $a2, VGAend		#VGAend

	jal cpy_mem_
.end_macro

.macro vga_print(%orig, %x, %y)

	add $v0, $zero, %y
	mul $v0, $v0, VGAw
	add $v0, $v0, %x	#[x][y]

	la $a0, %orig		#orig[0][0]
	la $a1, VGA			#VGA[0][0]
	add $a1, $a1, $v0	#VGA[x][y]
	la $a2, VGAend		#VGAend

	jal cpy_mem_b_
.end_macro

.macro vga_print_h(%orig, %x, %y, %h)

	add $v0, $zero, %y
	mul $v0, $v0, VGAw
	add $v0, $v0, %x		#[x][y]

	add $a0, $zero, %orig	#orig[0][0]
	la $a1, VGA				#VGA[0][0]
	add $a1, $a1, $v0		#VGA[x][y]
	la $a2, VGAend			#VGAend

	add $v0, $zero, %h
	mul $v0, $v0, VGAw
	add $v0, $v0, $a1	#VGA[x][y+h]

	min($a2,$v0)

	jal cpy_mem_b_
.end_macro

.macro vga_refresh()
	cpy_mem(VGA,VGAsz,_VGA)
.end_macro
