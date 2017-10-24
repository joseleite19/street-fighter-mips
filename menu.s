.eqv VGA 0xFF000000
.eqv VGAend 0xFF012C00
.eqv VGAw 320
.eqv VGAh 240
.eqv INV 0xc7

.data
	buffer1: .space 80000
	buffer2: .space 80000
	buffer3: .space 80000
	file: .asciiz "img/arcade.bin"
	sprite: .word 320 240
.text
	j main


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

.macro print_int(%int)
	add $a0, $zero, %int
	li $v0, 1
	syscall
	print("\n")
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
main:
	fill_scr(0x07)# Preenche a tela de vermelho
	open_file($s0,file1)
	read_file($s0,buffer1,80000)
	close_file($s0)
	open_file($s0,file2)
	read_file($s0,buffer2,80000)
	close_file($s0)
	open_file($s0,file3)
	read_file($s0,buffer3,80000)
	close_file($s0)

	li $s0, 0
	main_loopb:
		beq $s0, 0,img1
		beq $s0, 1,img2
		img3: print_image(0,0,buffer3,sprite3)
			j afterprint
		img2: print_image(0,0,buffer2,sprite2)
			j afterprint
		img1: print_image(0,0,buffer1,sprite1)
		afterprint:
		le_letra($s1)
		beq $s1,KEY_W,inc
		beq $s1,KEY_S,dec
		beq $s1,KEY_ENTER,do
		j main_loopb
		inc:
			beq $s0,3,main_loopb
			addi $s0,$s0,1
			j main_loopb
		dec:
			beq $s0,0,main_loopb
			addi $s0,$s0,-1
			j main_loopb
		do:
			beq $s0, 3, end
			j main_loopb
	j end
end:
