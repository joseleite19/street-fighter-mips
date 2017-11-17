.data
	stage_ch01: .asciiz "../img/bin/stage_ryu.bin"
	stage_ch02: .asciiz "../img/bin/stage_honda.bin"
	stage_ch03: .asciiz "../img/bin/stage_blanka.bin"
	stage_ch04: .asciiz "../img/bin/stage_guile.bin"

	stage_ch05: .asciiz "../img/bin/stage_ken.bin"
	stage_ch06: .asciiz "../img/bin/stage_chunli.bin"
	stage_ch07: .asciiz "../img/bin/stage_zangief.bin"
	stage_ch08: .asciiz "../img/bin/stage_dhalsim.bin"

	stage_ch09: .asciiz "../img/bin/stage_balrog.bin"
	stage_ch10: .asciiz "../img/bin/stage_vega.bin"
	stage_ch11: .asciiz "../img/bin/stage_sagat.bin"
	stage_ch12: .asciiz "../img/bin/stage_bison.bin"

	stages: .word stage_ch01, stage_ch02, stage_ch03, stage_ch04, stage_ch05, stage_ch06, stage_ch07, stage_ch08, stage_ch09, stage_ch10, stage_ch11, stage_ch12
.text
	select_stage:la $s3, stages		#s3 = stages
				sll $t1, $s2, 2		#t1 = i*4
				add $s3, $s3, $t1	#s3 = &stages[i]
				lw $s3, 0($s3)		#s3 = stages[i]
				jr $ra
