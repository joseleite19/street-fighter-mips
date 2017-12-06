
#0x0049c200    0x0049b260   

#    CC00 -> diferença sd/winhex
#0048f600 -> stage balrog -> winhex
#0049c200 -> stage balrog -> sd
#005f3600 -> ryu2/block_1 -> winhex -> 1o sprite
#00600200 -> ryu2/block_1 -> sd -> 1o sprite
#...
#00653600 -> ryu2/idle0_1 -> winhex
#00660200 -> ryu2/idle0_1 -> sd
#0065b600 -> ryu2/idle0_2 -> winhex
#00663600 -> ryu2/idle0_1 -> winhex
#00670200 -> ryu2/idle0_1 -> sd
#0066b600 -> ryu2/idle0_2 -> winhex
#...
#00753600 -> ryu/walking3_2 -> winhex -> ultimo sprite
#00760200 -> ryu/walking3_2 -> sd -> ultimo sprite


.eqv SD_DATA_ADDR 0x0049c200 # GBA_24b_bit.txt com header. Addr = Offset + (137 * 512) = Offset + 0x00011200 (defasagem de setores lÃ³gicos/fÃ­sicos * tamanho do setor)
.eqv VGA_INI_ADDR 0xFF000000
.eqv VGA_END_ADDR 0xFF012C00
.eqv SRAM_ADDR    0x10012000
.eqv VGA_QTD_BYTE 76800 # VGA Bytes

.eqv RYU_SPR_B 0x00600200
.eqv RYU_SPR_E 0x00760200

.macro copy_addr(%sd_add,%dest_add,%qtd_byte)
	add $a0, $zero, %sd_add
	la $a1, %dest_add
	add $a2, $zero, %qtd_byte
	_syscall(49)
.end_macro

.macro copy_mem(%orig_add,%dest_add,%qtd_byte)
	add $a0, $zero, %orig_add
	add $a1, $zero, %dest_add
	add $a2, $zero, %qtd_byte
	_jal(copy_mem_)
.end_macro

.macro multi(%reg, %a, %b)
	add $a0, $zero, %a
	add $at, $zero, %b
	mult $a0, $at
	mflo %reg
.end_macro

.macro vga_add(%reg,%x,%y)
	multi($a0, %y, 320)
	la %reg, VGA_INI_ADDR
	add %reg, %reg, $a0
	add %reg, %reg, %x
	#add %reg, %reg, 5400
.end_macro

.macro mem_fill_w(%beg, %size, %val)
	la $a0, %beg
	la $a1, %size
	la $a2, %val
	_jal(mem_fill_w_)
.end_macro	

.macro sleep(%ms)
	add $a0, $zero, %ms
	_syscall(32)
.end_macro

.macro read_int_c(%reg, %addr)
	add $v0, $zero, %addr
	_jal(read_int_c_)
	move %reg, $v0
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


.eqv n_stages 10
.eqv n_sprites 21
.eqv n_personagens 4
.eqv n_menus 5
.eqv sprite_size 0xc000
.eqv sprite_sizex2 0x18000

.eqv stages_ini_addr 0x0049c200
.eqv menus_ini_addr 0x0115f600


.data
	#block, hit, idle0, idle1, jkick, jpunch, jump0, jump1, ko, power0, power1, projectile
	#skick, spunch, victory, walking0, walking1, walking2, walking3
	inicial: .word 0x014bf600, 0x014cb600, 0x016d3600, 0x016df600
                      #ryu_1,      ryu_2,      ken_1,      ken_2

.text
main:
	la $s0, menus_ini_addr
	add $s0, $s0, 0xcc00
	la $t0, 0x14000
	multi($t0, $t0, n_menus)
	add $s1, $s0, $t0
loopStages: beq $s0, $s1, loopStagesEnd
	nop
	nop

	la $t0, VGA_QTD_BYTE
	copy_addr($s0, SRAM_ADDR, $t0)  #copia do sd apontado por s5, e envia para SRAM_ADDR, e copia srite_size bytes.
	mem_fill_w(VGA_INI_ADDR,VGA_QTD_BYTE,0x07070707)

	la $t1, SRAM_ADDR
	la $t2, VGA_INI_ADDR
	copy_mem($t1,$t2,$t0)

	la $t0, 0x14000
	add $s0, $s0, $t0
	_j(loopStages)
loopStagesEnd:nop
	mem_fill_w(VGA_INI_ADDR,VGA_QTD_BYTE,0)

	vga_add($s0, 0, 0)
#	vga_add($s1, 200, 100)
	la $s2,SRAM_ADDR
	add $s2, $s2, 520

	la $s3, inicial
	multi($t0, n_personagens, 4)
	add $s4, $s3, $t0

loopPersonagens: beq $s3, $s4, loopPersonagensEnd #s3 = começo do vetor de endereços de personagens no sd // s4=fim do mesmo
	nop
	nop
	lw $s5, 0($s3)  # s5 = endereço no sd do personagem -> Pega endereço do vetor de endereços e guarda em s5
	add $s5, $s5, 0xca00 #soma offset
	multi($t0, n_sprites, sprite_size) # auxiliar para calcular o endereço final das sprites do personagem atual e guarda em t0 o tamanho em bytes do vetor de personagens
	add $s6, $s5, $t0 # t0 = tamanho em bytes do vetor de personagem -> t6 é o endereço final 
	loopSprites: bge $s5, $s6, loopSpritesEnd  # se s5 chegou a s6 (final), encerre
		nop
		nop
		copy_addr($s5, SRAM_ADDR, sprite_size)  #copia do sd apontado por s5, e envia para SRAM_ADDR, e copia srite_size bytes.

		la $t0, SRAM_ADDR # copia o endereço da sram para t0
		read_int_c($t8,$t0) # lê os quatros primeiros bytes = tamanho da sprite
		add $t0, $t0, 4 # atualiza para ler os proximos 4 bytes
		read_int_c($t9,$t0) # lê os proximos 4 byte
		multi($t0, $t8, $t9) # multiplica t8 e t9 para descobrir o tamanho da imagem
		mem_fill_w(VGA_INI_ADDR,VGA_QTD_BYTE,0x07070707) # 
		copy_mem($s2,$s0,$t0)
		
		add $s5, $s5, sprite_sizex2
		_j(loopSprites)
	loopSpritesEnd: nop
	nop
	add $s3, $s3, 4
	_j(loopPersonagens)
loopPersonagensEnd:

end:
	_syscall(10)# Syscal 10 - exit

copy_mem_:nop
	lw $a3, 0($a0)
	sw $a3, 0($a1)
	add $a0, $a0, 4
	add $a1, $a1, 4
	add $a2, $a2, -4
	bgt $a2, $zero, copy_mem_
	nop
	nop
	_jr($ra)

mem_fill_w_:nop
	sw $a2, 0($a0)
	add $a0, $a0, 4
	add $a1, $a1, -4
	bnez $a1, mem_fill_w_
	nop
	nop
	_jr($ra)

read_int_c_:
	lbu $a0, 0($v0)
	lbu $a1, 1($v0)
	lbu $a2, 2($v0)
	lbu $a3, 3($v0)
	sll $a3, $a3, 24
	sll $a2, $a2, 16
	sll $a1, $a1, 8
	add $v0, $zero, $a0
	add $v0, $v0, $a1
	add $v0, $v0, $a2
	add $v0, $v0, $a3
	_jr($ra)

#a0 = ind menu
#a1 = addr buffer
read_menu_:
	la $s0, menus_ini_addr
	add $s0, $s0, 0xcc00
	la $t0, 0x14000
	multi($t0, $t0, $a0)
	add $s0, $s0, $t0

	la $t0, VGA_QTD_BYTE
	copy_addr($s0, $a1, $t0)  #copia do sd apontado por s5, e envia para SRAM_ADDR, e copia srite_size bytes.
	_jr($ra)


#a0 = ind stage
#a1 = addr buffer
read_stage_:
	la $s0, stages_ini_addr
	add $s0, $s0, 0
	la $t0, 0x14000
	multi($t0, $t0, $a0)
	add $s0, $s0, $t0

	la $t0, VGA_QTD_BYTE
	copy_addr($s0, $a1, $t0)  #copia do sd apontado por s5, e envia para SRAM_ADDR, e copia srite_size bytes.
	_jr($ra)


#a0 = ind personagem
#a1 = ind sprite
#a2 = addr buffer
read_sprite_:
	la $s3, inicial
	multi($t0, $a0, 4)
	add $s3, $s3, $t0

	lw $s5, 0($s3)  # s5 = endereço no sd do personagem -> Pega endereço do vetor de endereços e guarda em s5
	add $s5, $s5, 0xca00 #soma offset
	multi($t0, $a1, sprite_size) # auxiliar para calcular o endereço final das sprites do personagem atual e guarda em t0 o tamanho em bytes do vetor de personagens
	copy_addr($s5, $a2, sprite_size)  #copia do sd apontado por s5, e envia para SRAM_ADDR, e copia srite_size bytes.

	_jr($ra)
