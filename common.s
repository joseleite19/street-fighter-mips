.text

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
	li $v0,13
	syscall
	jr $ra

.macro read_file(%address,%buffer,%mx_size)
	add $a0,$zero,%address
	la $a1, %buffer
	add $a2,$zero,%mx_size
	li $v0, 14
	syscall
.end_macro

.macro close_file(%address)
	add $a0, $zero, %address
	li $v0, 16
	syscall
.end_macro

.macro print(%str)
.data
	LABEL: .asciiz %str
.text
	la $a0, LABEL
	li $v0, 4
	syscall
.end_macro

.macro prints(%str,%x,%y,%color)
.data
	LABEL: .asciiz %str
.text
	la $a0, LABEL
	add $a1, $zero, %x
	add $a2, $zero, %y
	add $a3, $zero, %color
	li $v0, 104
	syscall
.end_macro

.macro printsr(%str,%x,%y,%color)
.text
	add $a0, $zero, %str
	add $a1, $zero, %x
	add $a2, $zero, %y
	add $a3, $zero, %color
	li $v0, 104
	syscall
.end_macro

.macro print_int(%int)
	add $a0, $zero, %int
	li $v0, 1
	syscall
	print("\n")
.end_macro

.macro prints_int(%int,%x,%y,%color)
	add $a0, $zero, %int
	add $a1, $zero, %x
	add $a2, $zero, %y
	add $a3, $zero, %color
	li $v0, 101
	syscall
.end_macro

.macro print_image(%x,%y,%buffer,%sprite)
	add $a0, $zero, %x
	add $a1, $zero, %y
	la $t0, %buffer
	la $t9, %sprite
	jal _print_image
.end_macro
_print_image:
	lw $t1, 0($t9)#t1 = w
	lw $t2, 4($t9)#t2 = h
	move $t4, $zero#j = 0
	for1b: beq $t4, $t2, for1e
		move $t3, $zero#i = 0
		for2b: beq $t3, $t1, for2e
			lbu $t7, 0($t0)#t7 = pixel

			beq $t7, INV, noprint

			add $t5, $t3, $a0#t5 = i + x
			add $t6, $t4, $a1#t6 = j + y
			bgt $t5, VGAw, noprint#if t5 > w continue
			bgt $t6, VGAh, noprint#if t6 > h continue

			la $t8, VGA
			add $t5, $t5, $t8#t5 += VGA
			mul $t6, $t6, VGAw#t6 *= w
			add $t5, $t5, $t6#t5 += t6
			sb $t7, 0($t5)

			noprint:
			addi $t0, $t0, 1
			addi $t3, $t3, 1

			j for2b
		for2e:
		addi $t4, $t4, 1
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
	li $v0, 5
	syscall
	move %reg, $v0
.end_macro

.macro sleep(%time)
	li $v0, 32
	add $a0, $zero, %time
	syscall
.end_macro

.macro sysc(%code)
	add $v0, $zero, %code
	syscall
.end_macro

.macro mod(%dest, %op, %dv)
	add $at, $zero, %op
	add %dest, $zero, %dv
	div $at, %dest
	mfhi %dest
.end_macro

