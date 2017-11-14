.data
	stage_ch01: .asciiz "img/bin/stage_balrog.bin"
	stage_ch02: .asciiz "img/bin/stage_bison.bin"
	stage_ch03: .asciiz "img/bin/stage_blanka.bin"
	stage_ch04: .asciiz "img/bin/stage_chunli.bin"
	stage_ch05: .asciiz "img/bin/stage_dhalsim.bin"
	stage_ch06: .asciiz "img/bin/stage_guile.bin"
	stage_ch07: .asciiz "img/bin/stage_honda.bin"
	stage_ch08: .asciiz "img/bin/stage_ken.bin"
	stage_ch09: .asciiz "img/bin/stage_ryu.bin"
	stage_ch10: .asciiz "img/bin/stage_sagat.bin"
	stage_ch11: .asciiz "img/bin/stage_vega.bin"
	stage_ch12: .asciiz "img/bin/stage_zangief.bin"

	stages: .word stage_ch01, stage_ch02, stage_ch03, stage_ch04, stage_ch05, stage_ch06, stage_ch07, stage_ch08, stage_ch09, stage_ch10, stage_ch11, stage_ch12
.text
	select_stage:li $s1, 0

	stage_in:	la $t0, stages		#t0 = stages
				sll $t1, $s1, 2		#t1 = i*4
				add $t0, $t0, $t1	#t0 = &stages[i]
				lw $s0, 0($t0)		#t0 = stages[i]
				open_filer($t0,$s0)
				read_file($t0,buffer1,80000)
				close_file($t0)
				print_image(0,0,buffer1,sprite)
				printsr($s0,10,10,0x07)
	stage_read:	read_int($t0)

				beq $t0,1,stage_inc
				beq $t0,2,stage_dec
				beq $t0,3,stage_do
				beq $t0,0,stage_quit
				j stage_read

				stage_inc:
					beq $s1,11,stage_read
					addi $s1,$s1,1
					j stage_in
				stage_dec:
					beq $s1,0,stage_read
					addi $s1,$s1,-1
					j stage_in
				stage_do:
					#do something
					#j stage_in
					j stage_read
				stage_quit:
					li $s1, -1
					j stage_out
	stage_out:	j screen_menu
