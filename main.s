.eqv VGA 0xFF000000
.eqv VGAend 0xFF012C00
.eqv VGAw 320
.eqv VGAh 240
.eqv INV 0xc7

.data
	buffer1: .space 80000
	buffer2: .space 80000
	buffer3: .space 80000
	file1: .asciiz "img/arcade.bin"
	file2: .asciiz "img/vs.bin"
	file3: .asciiz "img/quit.bin"
	sprite: .word 320 240
.text

main:
	j screen_menu


.include "common.s"
.include "screens/menu.s"
.include "screens/option.s"
.include "screens/select.s"
.include "screens/end.s"
