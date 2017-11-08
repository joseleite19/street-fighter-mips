.eqv VGA 0xFF000000
.eqv VGAend 0xFF012C00
.eqv VGAw 320
.eqv VGAh 240
.eqv INV 0xc7
.eqv P1_COLOR 0x07
.eqv P2_COLOR 0xC0

.data
	buffer1: .space 80000
	buffer2: .space 80000
	buffer3: .space 80000

	select_img1: .asciiz "img/select.bin"
	select_p1: .asciiz "P1"
	select_p2: .asciiz "P2"
.text

main:
	j screen_menu


.include "common.s"
.include "screens/menu.s"
.include "screens/select_ai.s"
.include "screens/select_versus.s"
.include "screens/end.s"
