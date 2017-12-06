.eqv _VGA    0xff000000
.eqv _VGAend 0xff012c00
.eqv VGAsz   0x00012c00
.eqv VGAw    320
.eqv VGAh    240

.eqv w 0x20000000 #1
.eqv a 0x10000000 #1
.eqv s 0x08000000 #1
.eqv d 0x00000008 #2
.eqv f 0x00000800 #2
.eqv q 0x00200000 #1
.eqv e 0x00000010 #2
.eqv z 0x04000000 #1
.eqv m 0x04000000 #2
.eqv i 0x00000008 #3
.eqv k 0x00000004 #3
.eqv l 0x00000800 #3
.eqv jota 0x08000000 #2



.eqv KB 0xFF100520

.eqv KB_ADD  0xff100004
.eqv KB_ADD1 0xff100100
.eqv KB_ADD2 0xff100104

.eqv INV   0xc7
.eqv BLACK 0x00
.eqv WHITE 0xff
.eqv RED   0x07

.eqv GROUND_Y 210

.eqv VGA    0x101FF400
.eqv VGAend 0x10212000

.eqv SRAM 0x10012000


.data
	wasd: .asciiz "wasd"
	p1keys: .asciiz "wasdqezxc"
	p2keys: .asciiz "ijkluom,."
	enter: .asciiz "f"

	.word 0#align

	KEYBOARD: .space 4

.text

.macro check_key(%reg, %val)
	li $a0, %val
	jal _check_key
	nop
	nop
	add %reg, $zero, $at	
.end_macro

.macro _jal(%addr)
	jal %addr
	nop
	nop
.end_macro

.macro _jr(%reg)
	jr %reg
	nop
	nop
.end_macro

.macro _j(%addr)
	j %addr
	nop
	nop
.end_macro

.macro _syscall(%val)
	add $v0, $zero, %val
	syscall
	nop
	nop
.end_macro


.macro multi(%reg, %a, %b)
	add $a0, $zero, %a
	add $at, $zero, %b
	mult $a0, $at
	mflo %reg
.end_macro


.macro min(%reg1,%reg2)
	add $v0, $zero, %reg2
	blt %reg1, $v0, min_end
	nop
	nop
	move %reg1, $v0
	min_end: nop
.end_macro


.macro max(%reg1,%reg2)
	add $v0, $zero, %reg2
	bgt %reg1, $v0, max_end
	nop
	nop
	move %reg1, $v0
	max_end: nop
.end_macro


.macro fill_scr(%color)
	add $a0, $zero, %color
	multi($a0, $a0, 0x01010101)
	la $a1, _VGA
	la $a2, VGAsz
	add $a2, $a1, $a2
	#_j(end)
	_jal(_fill_screen)
.end_macro
_fill_screen:
	sw $a0, 0($a1)
	add $a1, $a1, 4
	bne $a1, $a2, _fill_screen
	nop
	nop
	_jr($ra)


.macro midi(%pitch, %duration, %instrument, %volume)
	add $a0, $zero, %pitch
	add $a1, $zero, %duration
	add $a2, $zero, %instrument
	add $a3, $zero, %volume
	_syscall(31)
.end_macro


.macro keyboard_upd()
	_jal(keyboard_upd_)
.end_macro
keyboard_upd_:
	la $a0, KB_ADD
	lw $a1, 0($a0)
	sw $zero, 0($a0)

	la $a0, KEYBOARD
	sw $a1, 0($a0)
	_jr($ra)

.macro keyboard_check(%key,%jump, %kr)
	#check_key($v0, %key)
	la $t8, %key
	la $t2,0xFF100520	#KEY0
	addi $t2, $t2, %kr
	addi $t2, $t2, %kr
	addi $t2, $t2, %kr
	addi $t2, $t2, %kr
	lw $t2,0($t2)
	
	and $t2, $t2, $t8
	
	bne $t2, $zero, %jump
	nop
	nop
	nop
.end_macro
keyboard_check_:
	lbu $a0, 0($a0)
	la $a1, KEYBOARD
	lbu $a2, 0($a1)
	beq $a2, $a0, kb_check_yes
	nop
	nop
	lbu $a2, 1($a1)
	beq $a2, $a0, kb_check_yes
	nop
	nop
	lbu $a2, 2($a1)
	beq $a2, $a0, kb_check_yes
	nop
	nop
	lbu $a2, 3($a1)
	beq $a2, $a0, kb_check_yes
	nop
	nop
	kb_check_no:li $v0, 0
				_jr($ra)
	kb_check_yes:li $v0, 1
				_jr($ra)


.macro sleep(%ms)
	add $a0, $zero, %ms
	_syscall(32)
.end_macro


.macro mem_fill_w(%beg, %size, %val)
	la $a0, %beg
	la $a1, %size
	la $a2, %val
	_jal(mem_fill_w_)
.end_macro	
mem_fill_w_:nop
	sw $a2, 0($a0)
	add $a0, $a0, 4
	add $a1, $a1, -4
	bnez $a1, mem_fill_w_
	nop
	nop
	_jr($ra)


.macro cpy_mem(%orig, %size, %dest)
	la $a0, %orig
	la $a1, %dest
	add $a2, $a0, %size
	_jal(cpy_mem_)
.end_macro
.macro cpy_memr(%orig, %size, %dest)
	add $a0, $zero, %orig
	add $a1, $zero, %dest
	add $a2, $a0, %size
	_jal(cpy_mem_)
.end_macro
.macro cpy_mem_end(%orig, %dest, %end)
	la $a0, %orig
	la $a1, %dest
	la $a2, %end
	_jal(cpy_mem_)
.end_macro
.macro cpy_mem_endr(%orig, %dest, %end)
	add $a0, $zero, %orig
	add $a1, $zero, %dest
	add $a2, $zero, %end
	_jal(cpy_mem_)
.end_macro
cpy_mem_:	lw $v0, 0($a0)
			sw $v0, 0($a1)
			add $a0, $a0, 4
			add $a1, $a1, 4
			beq $a2, $a0, jr_ra
			nop
			nop
			beq $a2, $a1, jr_ra
			nop
			nop
			_j(cpy_mem_)
cpy_mem_b_:lbu $v0, 0($a0)
			beq $v0, 0xc7 cpy_mem_bno
			nop
			nop
			sb $v0, 0($a1)
cpy_mem_bno:add $a0, $a0, 1
			add $a1, $a1, 1
			beq $a2, $a0, jr_ra
			nop
			nop
			beq $a2, $a1, jr_ra
			nop
			nop
			_j(cpy_mem_b_)
jr_ra:		_jr($ra)


.macro vga_print_full(%orig, %x, %y)
	add $v0, $zero, %y
	multi( $v0, $v0, VGAw)
	add $v0, $v0, %x	#[x][y]

	la $a0, %orig		#orig[0][0]
	la $a1, VGA			#VGA[0][0]
	add $a1, $a1, $v0	#VGA[x][y]
	la $a2, VGAend		#VGAend

	_jal(cpy_mem_)
.end_macro


.macro vga_print(%orig, %x, %y)
	multi($v0, VGAw, %y)
	add $v0, $v0, %x	#[x][y]

	la $a0, %orig		#orig[0][0]
	la $a1, VGA			#VGA[0][0]
	add $a1, $a1, $v0	#VGA[x][y]
	la $a2, VGAend		#VGAend

	_jal(cpy_mem_b_)
.end_macro


.macro vga_print_h(%orig, %x, %y, %h)
	add $v0, $zero, %y
	multi($v0, $v0, VGAw)
	add $v0, $v0, %x		#[x][y]

	add $a0, $zero, %orig	#orig[0][0]
	la $a1, VGA				#VGA[0][0]
	add $a1, $a1, $v0		#VGA[x][y]
	la $a2, VGAend			#VGAend

	add $v0, $zero, %h
	multi( $v0, $v0, VGAw)
	add $v0, $v0, $a1	#VGA[x][y+h]

	min($a2,$v0)

	_jal(cpy_mem_b_)
.end_macro


.macro vga_refresh()
	cpy_mem(VGA,VGAsz,_VGA)
.end_macro


.macro copy_addr(%sd_add,%dest_add,%qtd_byte)
	add $a0, $zero, %sd_add
	add $a1, $zero, %dest_add
	add $a2, $zero, %qtd_byte
	_syscall(49)
.end_macro

_check_key:nop
	la $v1, KB
	srl $a1, $a0, 5 #div
	sll $a1, $a1, 2
	andi $a2, $a0, 31 #mod
	add $a0, $zero, 1
	sllv $a2, $a0, $a2
	
	add $a0, $a1, $v1
	
	lw $t6, 0($a0)
	and $t6, $t6, $a2
	add $at, $zero, $zero
	beqz $t6, fim_check_key
	nop
	nop
	add $at, $zero, 1
	
fim_check_key:
        _jr($ra)
        
.macro mod(%dest, %op, %dv)
	add $at, $zero, %op
	add %dest, $zero, %dv
	div $at, %dest
	mfhi %dest
.end_macro


.macro print_rect(%x,%y,%w,%h,%color)
	add $t0, $zero, %x
	add $t1, $zero, %y
	add $t2, $zero, %w
	add $t3, $zero, %h
	add $t4, $zero, %color
	_jal(print_rect_)
.end_macro
print_rect_:
	la $t5, VGAw		#t5 = one line
	la $t6, VGA			#t6 = base address
	multi($t7, $t5, $t1)	#t7 = y lines
	add $t7, $t7, $t0	#t7 = x + (y lines)
	add $t6, $t6, $t7	#t6 = vga[x][y]
	move $t7, $t6		#t7 = vga[x][y]
	multi($t8, $t5, $t3)	#t8 = h lines
	add $t8, $t6, $t8	#t8 = vga[x][y+h]
	add $t9, $t6, $t2	#t9 = vga[x+w][y]
	for1i:	beq $t7, $t9, for1o
		nop
		nop
		sb $t4, 0($t7)
		sb $t4, 0($t8)
		add $t7, $t7, 1
		add $t8, $t8, 1
		_j(for1i)
	for1o:	nop
	move $t8, $t6		#t8 = vga[x][y]
						#t9 = vga[x+w][y]
	multi($t7, $t5, $t3)	#t7 = h lines
	add $t7, $t7, $t6	#t7 = vga[x][y+h]

	for2i:	beq $t8, $t7, for2o
		nop
		nop
		sb $t4, 0($t8)
		sb $t4, 0($t9)
		add $t8, $t8, $t5
		add $t9, $t9, $t5
		_j(for2i)
	for2o:	nop

	_jr($ra)
