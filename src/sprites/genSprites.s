.eqv ANIM_BLOCK 0
.eqv ANIM_BLOCK_LEN 1
.eqv ANIM_FJUMP 1
.eqv ANIM_FJUMP_LEN 4
.eqv ANIM_HIT 2
.eqv ANIM_HIT_LEN 1
.eqv ANIM_IDLE 3
.eqv ANIM_IDLE_LEN 2
.eqv ANIM_JKICK 4
.eqv ANIM_JKICK_LEN 1
.eqv ANIM_JPUNCH 5
.eqv ANIM_JPUNCH_LEN 1
.eqv ANIM_JUMP 6
.eqv ANIM_JUMP_LEN 2
.eqv ANIM_KICK 7
.eqv ANIM_KICK_LEN 1
.eqv ANIM_KO 8
.eqv ANIM_KO_LEN 1
.eqv ANIM_PROJECTIL 9
.eqv ANIM_PROJECTIL_LEN 1
.eqv ANIM_PUNCH 10
.eqv ANIM_PUNCH_LEN 1
.eqv ANIM_SPECIAL 11
.eqv ANIM_SPECIAL_LEN 2
.eqv ANIM_VICTORY 12
.eqv ANIM_VICTORY_LEN 1
.eqv ANIM_WALKING 13
.eqv ANIM_WALKING_LEN 4

.data
	#sprites:
		#ryu:
			#ryu_block
				spr_ryu_block0: .asciiz "../img/bin/sprites/ryu/block0.bin"
			spr_ryu_block: .word 1, spr_ryu_block0
			#ryu_fjump
				spr_ryu_fjump0: .asciiz "../img/bin/sprites/ryu/fjump0.bin"
				spr_ryu_fjump1: .asciiz "../img/bin/sprites/ryu/fjump1.bin"
				spr_ryu_fjump2: .asciiz "../img/bin/sprites/ryu/fjump2.bin"
				spr_ryu_fjump3: .asciiz "../img/bin/sprites/ryu/fjump3.bin"
			spr_ryu_fjump: .word 4, spr_ryu_fjump0, spr_ryu_fjump1, spr_ryu_fjump2, spr_ryu_fjump3
			#ryu_hit
				spr_ryu_hit0: .asciiz "../img/bin/sprites/ryu/hit0.bin"
			spr_ryu_hit: .word 1, spr_ryu_hit0
			#ryu_idle
				spr_ryu_idle0: .asciiz "../img/bin/sprites/ryu/idle0.bin"
				spr_ryu_idle1: .asciiz "../img/bin/sprites/ryu/idle1.bin"
			spr_ryu_idle: .word 2, spr_ryu_idle0, spr_ryu_idle1
			#ryu_jkick
				spr_ryu_jkick0: .asciiz "../img/bin/sprites/ryu/jkick0.bin"
			spr_ryu_jkick: .word 1, spr_ryu_jkick0
			#ryu_jpunch
				spr_ryu_jpunch0: .asciiz "../img/bin/sprites/ryu/jpunch0.bin"
			spr_ryu_jpunch: .word 1, spr_ryu_jpunch0
			#ryu_jump
				spr_ryu_jump0: .asciiz "../img/bin/sprites/ryu/jump0.bin"
				spr_ryu_jump1: .asciiz "../img/bin/sprites/ryu/jump1.bin"
			spr_ryu_jump: .word 2, spr_ryu_jump0, spr_ryu_jump1
			#ryu_kick
				spr_ryu_kick0: .asciiz "../img/bin/sprites/ryu/kick0.bin"
			spr_ryu_kick: .word 1, spr_ryu_kick0
			#ryu_ko
				spr_ryu_ko0: .asciiz "../img/bin/sprites/ryu/ko0.bin"
			spr_ryu_ko: .word 1, spr_ryu_ko0
			#ryu_projectil
				spr_ryu_projectil0: .asciiz "../img/bin/sprites/ryu/projectil0.bin"
			spr_ryu_projectil: .word 1, spr_ryu_projectil0
			#ryu_punch
				spr_ryu_punch0: .asciiz "../img/bin/sprites/ryu/punch0.bin"
			spr_ryu_punch: .word 1, spr_ryu_punch0
			#ryu_special
				spr_ryu_special0: .asciiz "../img/bin/sprites/ryu/special0.bin"
				spr_ryu_special1: .asciiz "../img/bin/sprites/ryu/special1.bin"
			spr_ryu_special: .word 2, spr_ryu_special0, spr_ryu_special1
			#ryu_victory
				spr_ryu_victory0: .asciiz "../img/bin/sprites/ryu/victory0.bin"
			spr_ryu_victory: .word 1, spr_ryu_victory0
			#ryu_walking
				spr_ryu_walking0: .asciiz "../img/bin/sprites/ryu/walking0.bin"
				spr_ryu_walking1: .asciiz "../img/bin/sprites/ryu/walking1.bin"
				spr_ryu_walking2: .asciiz "../img/bin/sprites/ryu/walking2.bin"
				spr_ryu_walking3: .asciiz "../img/bin/sprites/ryu/walking3.bin"
			spr_ryu_walking: .word 4, spr_ryu_walking0, spr_ryu_walking1, spr_ryu_walking2, spr_ryu_walking3
		sprites_ryu: .word spr_ryu_block, spr_ryu_fjump, spr_ryu_hit, spr_ryu_idle, spr_ryu_jkick, spr_ryu_jpunch, spr_ryu_jump, spr_ryu_kick, spr_ryu_ko, spr_ryu_projectil, spr_ryu_punch, spr_ryu_special, spr_ryu_victory, spr_ryu_walking
		#honda:
			#honda_block
				spr_honda_block0: .asciiz "../img/bin/sprites/honda/block0.bin"
			spr_honda_block: .word 1, spr_honda_block0
			#honda_fjump
				spr_honda_fjump0: .asciiz "../img/bin/sprites/honda/fjump0.bin"
				spr_honda_fjump1: .asciiz "../img/bin/sprites/honda/fjump1.bin"
				spr_honda_fjump2: .asciiz "../img/bin/sprites/honda/fjump2.bin"
				spr_honda_fjump3: .asciiz "../img/bin/sprites/honda/fjump3.bin"
			spr_honda_fjump: .word 4, spr_honda_fjump0, spr_honda_fjump1, spr_honda_fjump2, spr_honda_fjump3
			#honda_hit
				spr_honda_hit0: .asciiz "../img/bin/sprites/honda/hit0.bin"
			spr_honda_hit: .word 1, spr_honda_hit0
			#honda_idle
				spr_honda_idle0: .asciiz "../img/bin/sprites/honda/idle0.bin"
				spr_honda_idle1: .asciiz "../img/bin/sprites/honda/idle1.bin"
			spr_honda_idle: .word 2, spr_honda_idle0, spr_honda_idle1
			#honda_jkick
				spr_honda_jkick0: .asciiz "../img/bin/sprites/honda/jkick0.bin"
			spr_honda_jkick: .word 1, spr_honda_jkick0
			#honda_jpunch
				spr_honda_jpunch0: .asciiz "../img/bin/sprites/honda/jpunch0.bin"
			spr_honda_jpunch: .word 1, spr_honda_jpunch0
			#honda_jump
				spr_honda_jump0: .asciiz "../img/bin/sprites/honda/jump0.bin"
				spr_honda_jump1: .asciiz "../img/bin/sprites/honda/jump1.bin"
			spr_honda_jump: .word 2, spr_honda_jump0, spr_honda_jump1
			#honda_kick
				spr_honda_kick0: .asciiz "../img/bin/sprites/honda/kick0.bin"
			spr_honda_kick: .word 1, spr_honda_kick0
			#honda_ko
				spr_honda_ko0: .asciiz "../img/bin/sprites/honda/ko0.bin"
			spr_honda_ko: .word 1, spr_honda_ko0
			#honda_projectil
				spr_honda_projectil0: .asciiz "../img/bin/sprites/honda/projectil0.bin"
			spr_honda_projectil: .word 1, spr_honda_projectil0
			#honda_punch
				spr_honda_punch0: .asciiz "../img/bin/sprites/honda/punch0.bin"
			spr_honda_punch: .word 1, spr_honda_punch0
			#honda_special
				spr_honda_special0: .asciiz "../img/bin/sprites/honda/special0.bin"
				spr_honda_special1: .asciiz "../img/bin/sprites/honda/special1.bin"
			spr_honda_special: .word 2, spr_honda_special0, spr_honda_special1
			#honda_victory
				spr_honda_victory0: .asciiz "../img/bin/sprites/honda/victory0.bin"
			spr_honda_victory: .word 1, spr_honda_victory0
			#honda_walking
				spr_honda_walking0: .asciiz "../img/bin/sprites/honda/walking0.bin"
				spr_honda_walking1: .asciiz "../img/bin/sprites/honda/walking1.bin"
				spr_honda_walking2: .asciiz "../img/bin/sprites/honda/walking2.bin"
				spr_honda_walking3: .asciiz "../img/bin/sprites/honda/walking3.bin"
			spr_honda_walking: .word 4, spr_honda_walking0, spr_honda_walking1, spr_honda_walking2, spr_honda_walking3
		sprites_honda: .word spr_honda_block, spr_honda_fjump, spr_honda_hit, spr_honda_idle, spr_honda_jkick, spr_honda_jpunch, spr_honda_jump, spr_honda_kick, spr_honda_ko, spr_honda_projectil, spr_honda_punch, spr_honda_special, spr_honda_victory, spr_honda_walking
		#blanka:
			#blanka_block
				spr_blanka_block0: .asciiz "../img/bin/sprites/blanka/block0.bin"
			spr_blanka_block: .word 1, spr_blanka_block0
			#blanka_fjump
				spr_blanka_fjump0: .asciiz "../img/bin/sprites/blanka/fjump0.bin"
				spr_blanka_fjump1: .asciiz "../img/bin/sprites/blanka/fjump1.bin"
				spr_blanka_fjump2: .asciiz "../img/bin/sprites/blanka/fjump2.bin"
				spr_blanka_fjump3: .asciiz "../img/bin/sprites/blanka/fjump3.bin"
			spr_blanka_fjump: .word 4, spr_blanka_fjump0, spr_blanka_fjump1, spr_blanka_fjump2, spr_blanka_fjump3
			#blanka_hit
				spr_blanka_hit0: .asciiz "../img/bin/sprites/blanka/hit0.bin"
			spr_blanka_hit: .word 1, spr_blanka_hit0
			#blanka_idle
				spr_blanka_idle0: .asciiz "../img/bin/sprites/blanka/idle0.bin"
				spr_blanka_idle1: .asciiz "../img/bin/sprites/blanka/idle1.bin"
			spr_blanka_idle: .word 2, spr_blanka_idle0, spr_blanka_idle1
			#blanka_jkick
				spr_blanka_jkick0: .asciiz "../img/bin/sprites/blanka/jkick0.bin"
			spr_blanka_jkick: .word 1, spr_blanka_jkick0
			#blanka_jpunch
				spr_blanka_jpunch0: .asciiz "../img/bin/sprites/blanka/jpunch0.bin"
			spr_blanka_jpunch: .word 1, spr_blanka_jpunch0
			#blanka_jump
				spr_blanka_jump0: .asciiz "../img/bin/sprites/blanka/jump0.bin"
				spr_blanka_jump1: .asciiz "../img/bin/sprites/blanka/jump1.bin"
			spr_blanka_jump: .word 2, spr_blanka_jump0, spr_blanka_jump1
			#blanka_kick
				spr_blanka_kick0: .asciiz "../img/bin/sprites/blanka/kick0.bin"
			spr_blanka_kick: .word 1, spr_blanka_kick0
			#blanka_ko
				spr_blanka_ko0: .asciiz "../img/bin/sprites/blanka/ko0.bin"
			spr_blanka_ko: .word 1, spr_blanka_ko0
			#blanka_projectil
				spr_blanka_projectil0: .asciiz "../img/bin/sprites/blanka/projectil0.bin"
			spr_blanka_projectil: .word 1, spr_blanka_projectil0
			#blanka_punch
				spr_blanka_punch0: .asciiz "../img/bin/sprites/blanka/punch0.bin"
			spr_blanka_punch: .word 1, spr_blanka_punch0
			#blanka_special
				spr_blanka_special0: .asciiz "../img/bin/sprites/blanka/special0.bin"
				spr_blanka_special1: .asciiz "../img/bin/sprites/blanka/special1.bin"
			spr_blanka_special: .word 2, spr_blanka_special0, spr_blanka_special1
			#blanka_victory
				spr_blanka_victory0: .asciiz "../img/bin/sprites/blanka/victory0.bin"
			spr_blanka_victory: .word 1, spr_blanka_victory0
			#blanka_walking
				spr_blanka_walking0: .asciiz "../img/bin/sprites/blanka/walking0.bin"
				spr_blanka_walking1: .asciiz "../img/bin/sprites/blanka/walking1.bin"
				spr_blanka_walking2: .asciiz "../img/bin/sprites/blanka/walking2.bin"
				spr_blanka_walking3: .asciiz "../img/bin/sprites/blanka/walking3.bin"
			spr_blanka_walking: .word 4, spr_blanka_walking0, spr_blanka_walking1, spr_blanka_walking2, spr_blanka_walking3
		sprites_blanka: .word spr_blanka_block, spr_blanka_fjump, spr_blanka_hit, spr_blanka_idle, spr_blanka_jkick, spr_blanka_jpunch, spr_blanka_jump, spr_blanka_kick, spr_blanka_ko, spr_blanka_projectil, spr_blanka_punch, spr_blanka_special, spr_blanka_victory, spr_blanka_walking
		#guile:
			#guile_block
				spr_guile_block0: .asciiz "../img/bin/sprites/guile/block0.bin"
			spr_guile_block: .word 1, spr_guile_block0
			#guile_fjump
				spr_guile_fjump0: .asciiz "../img/bin/sprites/guile/fjump0.bin"
				spr_guile_fjump1: .asciiz "../img/bin/sprites/guile/fjump1.bin"
				spr_guile_fjump2: .asciiz "../img/bin/sprites/guile/fjump2.bin"
				spr_guile_fjump3: .asciiz "../img/bin/sprites/guile/fjump3.bin"
			spr_guile_fjump: .word 4, spr_guile_fjump0, spr_guile_fjump1, spr_guile_fjump2, spr_guile_fjump3
			#guile_hit
				spr_guile_hit0: .asciiz "../img/bin/sprites/guile/hit0.bin"
			spr_guile_hit: .word 1, spr_guile_hit0
			#guile_idle
				spr_guile_idle0: .asciiz "../img/bin/sprites/guile/idle0.bin"
				spr_guile_idle1: .asciiz "../img/bin/sprites/guile/idle1.bin"
			spr_guile_idle: .word 2, spr_guile_idle0, spr_guile_idle1
			#guile_jkick
				spr_guile_jkick0: .asciiz "../img/bin/sprites/guile/jkick0.bin"
			spr_guile_jkick: .word 1, spr_guile_jkick0
			#guile_jpunch
				spr_guile_jpunch0: .asciiz "../img/bin/sprites/guile/jpunch0.bin"
			spr_guile_jpunch: .word 1, spr_guile_jpunch0
			#guile_jump
				spr_guile_jump0: .asciiz "../img/bin/sprites/guile/jump0.bin"
				spr_guile_jump1: .asciiz "../img/bin/sprites/guile/jump1.bin"
			spr_guile_jump: .word 2, spr_guile_jump0, spr_guile_jump1
			#guile_kick
				spr_guile_kick0: .asciiz "../img/bin/sprites/guile/kick0.bin"
			spr_guile_kick: .word 1, spr_guile_kick0
			#guile_ko
				spr_guile_ko0: .asciiz "../img/bin/sprites/guile/ko0.bin"
			spr_guile_ko: .word 1, spr_guile_ko0
			#guile_projectil
				spr_guile_projectil0: .asciiz "../img/bin/sprites/guile/projectil0.bin"
			spr_guile_projectil: .word 1, spr_guile_projectil0
			#guile_punch
				spr_guile_punch0: .asciiz "../img/bin/sprites/guile/punch0.bin"
			spr_guile_punch: .word 1, spr_guile_punch0
			#guile_special
				spr_guile_special0: .asciiz "../img/bin/sprites/guile/special0.bin"
				spr_guile_special1: .asciiz "../img/bin/sprites/guile/special1.bin"
			spr_guile_special: .word 2, spr_guile_special0, spr_guile_special1
			#guile_victory
				spr_guile_victory0: .asciiz "../img/bin/sprites/guile/victory0.bin"
			spr_guile_victory: .word 1, spr_guile_victory0
			#guile_walking
				spr_guile_walking0: .asciiz "../img/bin/sprites/guile/walking0.bin"
				spr_guile_walking1: .asciiz "../img/bin/sprites/guile/walking1.bin"
				spr_guile_walking2: .asciiz "../img/bin/sprites/guile/walking2.bin"
				spr_guile_walking3: .asciiz "../img/bin/sprites/guile/walking3.bin"
			spr_guile_walking: .word 4, spr_guile_walking0, spr_guile_walking1, spr_guile_walking2, spr_guile_walking3
		sprites_guile: .word spr_guile_block, spr_guile_fjump, spr_guile_hit, spr_guile_idle, spr_guile_jkick, spr_guile_jpunch, spr_guile_jump, spr_guile_kick, spr_guile_ko, spr_guile_projectil, spr_guile_punch, spr_guile_special, spr_guile_victory, spr_guile_walking
		#ken:
			#ken_block
				spr_ken_block0: .asciiz "../img/bin/sprites/ken/block0.bin"
			spr_ken_block: .word 1, spr_ken_block0
			#ken_fjump
				spr_ken_fjump0: .asciiz "../img/bin/sprites/ken/fjump0.bin"
				spr_ken_fjump1: .asciiz "../img/bin/sprites/ken/fjump1.bin"
				spr_ken_fjump2: .asciiz "../img/bin/sprites/ken/fjump2.bin"
				spr_ken_fjump3: .asciiz "../img/bin/sprites/ken/fjump3.bin"
			spr_ken_fjump: .word 4, spr_ken_fjump0, spr_ken_fjump1, spr_ken_fjump2, spr_ken_fjump3
			#ken_hit
				spr_ken_hit0: .asciiz "../img/bin/sprites/ken/hit0.bin"
			spr_ken_hit: .word 1, spr_ken_hit0
			#ken_idle
				spr_ken_idle0: .asciiz "../img/bin/sprites/ken/idle0.bin"
				spr_ken_idle1: .asciiz "../img/bin/sprites/ken/idle1.bin"
			spr_ken_idle: .word 2, spr_ken_idle0, spr_ken_idle1
			#ken_jkick
				spr_ken_jkick0: .asciiz "../img/bin/sprites/ken/jkick0.bin"
			spr_ken_jkick: .word 1, spr_ken_jkick0
			#ken_jpunch
				spr_ken_jpunch0: .asciiz "../img/bin/sprites/ken/jpunch0.bin"
			spr_ken_jpunch: .word 1, spr_ken_jpunch0
			#ken_jump
				spr_ken_jump0: .asciiz "../img/bin/sprites/ken/jump0.bin"
				spr_ken_jump1: .asciiz "../img/bin/sprites/ken/jump1.bin"
			spr_ken_jump: .word 2, spr_ken_jump0, spr_ken_jump1
			#ken_kick
				spr_ken_kick0: .asciiz "../img/bin/sprites/ken/kick0.bin"
			spr_ken_kick: .word 1, spr_ken_kick0
			#ken_ko
				spr_ken_ko0: .asciiz "../img/bin/sprites/ken/ko0.bin"
			spr_ken_ko: .word 1, spr_ken_ko0
			#ken_projectil
				spr_ken_projectil0: .asciiz "../img/bin/sprites/ken/projectil0.bin"
			spr_ken_projectil: .word 1, spr_ken_projectil0
			#ken_punch
				spr_ken_punch0: .asciiz "../img/bin/sprites/ken/punch0.bin"
			spr_ken_punch: .word 1, spr_ken_punch0
			#ken_special
				spr_ken_special0: .asciiz "../img/bin/sprites/ken/special0.bin"
				spr_ken_special1: .asciiz "../img/bin/sprites/ken/special1.bin"
			spr_ken_special: .word 2, spr_ken_special0, spr_ken_special1
			#ken_victory
				spr_ken_victory0: .asciiz "../img/bin/sprites/ken/victory0.bin"
			spr_ken_victory: .word 1, spr_ken_victory0
			#ken_walking
				spr_ken_walking0: .asciiz "../img/bin/sprites/ken/walking0.bin"
				spr_ken_walking1: .asciiz "../img/bin/sprites/ken/walking1.bin"
				spr_ken_walking2: .asciiz "../img/bin/sprites/ken/walking2.bin"
				spr_ken_walking3: .asciiz "../img/bin/sprites/ken/walking3.bin"
			spr_ken_walking: .word 4, spr_ken_walking0, spr_ken_walking1, spr_ken_walking2, spr_ken_walking3
		sprites_ken: .word spr_ken_block, spr_ken_fjump, spr_ken_hit, spr_ken_idle, spr_ken_jkick, spr_ken_jpunch, spr_ken_jump, spr_ken_kick, spr_ken_ko, spr_ken_projectil, spr_ken_punch, spr_ken_special, spr_ken_victory, spr_ken_walking
		#chunli:
			#chunli_block
				spr_chunli_block0: .asciiz "../img/bin/sprites/chunli/block0.bin"
			spr_chunli_block: .word 1, spr_chunli_block0
			#chunli_fjump
				spr_chunli_fjump0: .asciiz "../img/bin/sprites/chunli/fjump0.bin"
				spr_chunli_fjump1: .asciiz "../img/bin/sprites/chunli/fjump1.bin"
				spr_chunli_fjump2: .asciiz "../img/bin/sprites/chunli/fjump2.bin"
				spr_chunli_fjump3: .asciiz "../img/bin/sprites/chunli/fjump3.bin"
			spr_chunli_fjump: .word 4, spr_chunli_fjump0, spr_chunli_fjump1, spr_chunli_fjump2, spr_chunli_fjump3
			#chunli_hit
				spr_chunli_hit0: .asciiz "../img/bin/sprites/chunli/hit0.bin"
			spr_chunli_hit: .word 1, spr_chunli_hit0
			#chunli_idle
				spr_chunli_idle0: .asciiz "../img/bin/sprites/chunli/idle0.bin"
				spr_chunli_idle1: .asciiz "../img/bin/sprites/chunli/idle1.bin"
			spr_chunli_idle: .word 2, spr_chunli_idle0, spr_chunli_idle1
			#chunli_jkick
				spr_chunli_jkick0: .asciiz "../img/bin/sprites/chunli/jkick0.bin"
			spr_chunli_jkick: .word 1, spr_chunli_jkick0
			#chunli_jpunch
				spr_chunli_jpunch0: .asciiz "../img/bin/sprites/chunli/jpunch0.bin"
			spr_chunli_jpunch: .word 1, spr_chunli_jpunch0
			#chunli_jump
				spr_chunli_jump0: .asciiz "../img/bin/sprites/chunli/jump0.bin"
				spr_chunli_jump1: .asciiz "../img/bin/sprites/chunli/jump1.bin"
			spr_chunli_jump: .word 2, spr_chunli_jump0, spr_chunli_jump1
			#chunli_kick
				spr_chunli_kick0: .asciiz "../img/bin/sprites/chunli/kick0.bin"
			spr_chunli_kick: .word 1, spr_chunli_kick0
			#chunli_ko
				spr_chunli_ko0: .asciiz "../img/bin/sprites/chunli/ko0.bin"
			spr_chunli_ko: .word 1, spr_chunli_ko0
			#chunli_projectil
				spr_chunli_projectil0: .asciiz "../img/bin/sprites/chunli/projectil0.bin"
			spr_chunli_projectil: .word 1, spr_chunli_projectil0
			#chunli_punch
				spr_chunli_punch0: .asciiz "../img/bin/sprites/chunli/punch0.bin"
			spr_chunli_punch: .word 1, spr_chunli_punch0
			#chunli_special
				spr_chunli_special0: .asciiz "../img/bin/sprites/chunli/special0.bin"
				spr_chunli_special1: .asciiz "../img/bin/sprites/chunli/special1.bin"
			spr_chunli_special: .word 2, spr_chunli_special0, spr_chunli_special1
			#chunli_victory
				spr_chunli_victory0: .asciiz "../img/bin/sprites/chunli/victory0.bin"
			spr_chunli_victory: .word 1, spr_chunli_victory0
			#chunli_walking
				spr_chunli_walking0: .asciiz "../img/bin/sprites/chunli/walking0.bin"
				spr_chunli_walking1: .asciiz "../img/bin/sprites/chunli/walking1.bin"
				spr_chunli_walking2: .asciiz "../img/bin/sprites/chunli/walking2.bin"
				spr_chunli_walking3: .asciiz "../img/bin/sprites/chunli/walking3.bin"
			spr_chunli_walking: .word 4, spr_chunli_walking0, spr_chunli_walking1, spr_chunli_walking2, spr_chunli_walking3
		sprites_chunli: .word spr_chunli_block, spr_chunli_fjump, spr_chunli_hit, spr_chunli_idle, spr_chunli_jkick, spr_chunli_jpunch, spr_chunli_jump, spr_chunli_kick, spr_chunli_ko, spr_chunli_projectil, spr_chunli_punch, spr_chunli_special, spr_chunli_victory, spr_chunli_walking
		#zangief:
			#zangief_block
				spr_zangief_block0: .asciiz "../img/bin/sprites/zangief/block0.bin"
			spr_zangief_block: .word 1, spr_zangief_block0
			#zangief_fjump
				spr_zangief_fjump0: .asciiz "../img/bin/sprites/zangief/fjump0.bin"
				spr_zangief_fjump1: .asciiz "../img/bin/sprites/zangief/fjump1.bin"
				spr_zangief_fjump2: .asciiz "../img/bin/sprites/zangief/fjump2.bin"
				spr_zangief_fjump3: .asciiz "../img/bin/sprites/zangief/fjump3.bin"
			spr_zangief_fjump: .word 4, spr_zangief_fjump0, spr_zangief_fjump1, spr_zangief_fjump2, spr_zangief_fjump3
			#zangief_hit
				spr_zangief_hit0: .asciiz "../img/bin/sprites/zangief/hit0.bin"
			spr_zangief_hit: .word 1, spr_zangief_hit0
			#zangief_idle
				spr_zangief_idle0: .asciiz "../img/bin/sprites/zangief/idle0.bin"
				spr_zangief_idle1: .asciiz "../img/bin/sprites/zangief/idle1.bin"
			spr_zangief_idle: .word 2, spr_zangief_idle0, spr_zangief_idle1
			#zangief_jkick
				spr_zangief_jkick0: .asciiz "../img/bin/sprites/zangief/jkick0.bin"
			spr_zangief_jkick: .word 1, spr_zangief_jkick0
			#zangief_jpunch
				spr_zangief_jpunch0: .asciiz "../img/bin/sprites/zangief/jpunch0.bin"
			spr_zangief_jpunch: .word 1, spr_zangief_jpunch0
			#zangief_jump
				spr_zangief_jump0: .asciiz "../img/bin/sprites/zangief/jump0.bin"
				spr_zangief_jump1: .asciiz "../img/bin/sprites/zangief/jump1.bin"
			spr_zangief_jump: .word 2, spr_zangief_jump0, spr_zangief_jump1
			#zangief_kick
				spr_zangief_kick0: .asciiz "../img/bin/sprites/zangief/kick0.bin"
			spr_zangief_kick: .word 1, spr_zangief_kick0
			#zangief_ko
				spr_zangief_ko0: .asciiz "../img/bin/sprites/zangief/ko0.bin"
			spr_zangief_ko: .word 1, spr_zangief_ko0
			#zangief_projectil
				spr_zangief_projectil0: .asciiz "../img/bin/sprites/zangief/projectil0.bin"
			spr_zangief_projectil: .word 1, spr_zangief_projectil0
			#zangief_punch
				spr_zangief_punch0: .asciiz "../img/bin/sprites/zangief/punch0.bin"
			spr_zangief_punch: .word 1, spr_zangief_punch0
			#zangief_special
				spr_zangief_special0: .asciiz "../img/bin/sprites/zangief/special0.bin"
				spr_zangief_special1: .asciiz "../img/bin/sprites/zangief/special1.bin"
			spr_zangief_special: .word 2, spr_zangief_special0, spr_zangief_special1
			#zangief_victory
				spr_zangief_victory0: .asciiz "../img/bin/sprites/zangief/victory0.bin"
			spr_zangief_victory: .word 1, spr_zangief_victory0
			#zangief_walking
				spr_zangief_walking0: .asciiz "../img/bin/sprites/zangief/walking0.bin"
				spr_zangief_walking1: .asciiz "../img/bin/sprites/zangief/walking1.bin"
				spr_zangief_walking2: .asciiz "../img/bin/sprites/zangief/walking2.bin"
				spr_zangief_walking3: .asciiz "../img/bin/sprites/zangief/walking3.bin"
			spr_zangief_walking: .word 4, spr_zangief_walking0, spr_zangief_walking1, spr_zangief_walking2, spr_zangief_walking3
		sprites_zangief: .word spr_zangief_block, spr_zangief_fjump, spr_zangief_hit, spr_zangief_idle, spr_zangief_jkick, spr_zangief_jpunch, spr_zangief_jump, spr_zangief_kick, spr_zangief_ko, spr_zangief_projectil, spr_zangief_punch, spr_zangief_special, spr_zangief_victory, spr_zangief_walking
		#dhalsim:
			#dhalsim_block
				spr_dhalsim_block0: .asciiz "../img/bin/sprites/dhalsim/block0.bin"
			spr_dhalsim_block: .word 1, spr_dhalsim_block0
			#dhalsim_fjump
				spr_dhalsim_fjump0: .asciiz "../img/bin/sprites/dhalsim/fjump0.bin"
				spr_dhalsim_fjump1: .asciiz "../img/bin/sprites/dhalsim/fjump1.bin"
				spr_dhalsim_fjump2: .asciiz "../img/bin/sprites/dhalsim/fjump2.bin"
				spr_dhalsim_fjump3: .asciiz "../img/bin/sprites/dhalsim/fjump3.bin"
			spr_dhalsim_fjump: .word 4, spr_dhalsim_fjump0, spr_dhalsim_fjump1, spr_dhalsim_fjump2, spr_dhalsim_fjump3
			#dhalsim_hit
				spr_dhalsim_hit0: .asciiz "../img/bin/sprites/dhalsim/hit0.bin"
			spr_dhalsim_hit: .word 1, spr_dhalsim_hit0
			#dhalsim_idle
				spr_dhalsim_idle0: .asciiz "../img/bin/sprites/dhalsim/idle0.bin"
				spr_dhalsim_idle1: .asciiz "../img/bin/sprites/dhalsim/idle1.bin"
			spr_dhalsim_idle: .word 2, spr_dhalsim_idle0, spr_dhalsim_idle1
			#dhalsim_jkick
				spr_dhalsim_jkick0: .asciiz "../img/bin/sprites/dhalsim/jkick0.bin"
			spr_dhalsim_jkick: .word 1, spr_dhalsim_jkick0
			#dhalsim_jpunch
				spr_dhalsim_jpunch0: .asciiz "../img/bin/sprites/dhalsim/jpunch0.bin"
			spr_dhalsim_jpunch: .word 1, spr_dhalsim_jpunch0
			#dhalsim_jump
				spr_dhalsim_jump0: .asciiz "../img/bin/sprites/dhalsim/jump0.bin"
				spr_dhalsim_jump1: .asciiz "../img/bin/sprites/dhalsim/jump1.bin"
			spr_dhalsim_jump: .word 2, spr_dhalsim_jump0, spr_dhalsim_jump1
			#dhalsim_kick
				spr_dhalsim_kick0: .asciiz "../img/bin/sprites/dhalsim/kick0.bin"
			spr_dhalsim_kick: .word 1, spr_dhalsim_kick0
			#dhalsim_ko
				spr_dhalsim_ko0: .asciiz "../img/bin/sprites/dhalsim/ko0.bin"
			spr_dhalsim_ko: .word 1, spr_dhalsim_ko0
			#dhalsim_projectil
				spr_dhalsim_projectil0: .asciiz "../img/bin/sprites/dhalsim/projectil0.bin"
			spr_dhalsim_projectil: .word 1, spr_dhalsim_projectil0
			#dhalsim_punch
				spr_dhalsim_punch0: .asciiz "../img/bin/sprites/dhalsim/punch0.bin"
			spr_dhalsim_punch: .word 1, spr_dhalsim_punch0
			#dhalsim_special
				spr_dhalsim_special0: .asciiz "../img/bin/sprites/dhalsim/special0.bin"
				spr_dhalsim_special1: .asciiz "../img/bin/sprites/dhalsim/special1.bin"
			spr_dhalsim_special: .word 2, spr_dhalsim_special0, spr_dhalsim_special1
			#dhalsim_victory
				spr_dhalsim_victory0: .asciiz "../img/bin/sprites/dhalsim/victory0.bin"
			spr_dhalsim_victory: .word 1, spr_dhalsim_victory0
			#dhalsim_walking
				spr_dhalsim_walking0: .asciiz "../img/bin/sprites/dhalsim/walking0.bin"
				spr_dhalsim_walking1: .asciiz "../img/bin/sprites/dhalsim/walking1.bin"
				spr_dhalsim_walking2: .asciiz "../img/bin/sprites/dhalsim/walking2.bin"
				spr_dhalsim_walking3: .asciiz "../img/bin/sprites/dhalsim/walking3.bin"
			spr_dhalsim_walking: .word 4, spr_dhalsim_walking0, spr_dhalsim_walking1, spr_dhalsim_walking2, spr_dhalsim_walking3
		sprites_dhalsim: .word spr_dhalsim_block, spr_dhalsim_fjump, spr_dhalsim_hit, spr_dhalsim_idle, spr_dhalsim_jkick, spr_dhalsim_jpunch, spr_dhalsim_jump, spr_dhalsim_kick, spr_dhalsim_ko, spr_dhalsim_projectil, spr_dhalsim_punch, spr_dhalsim_special, spr_dhalsim_victory, spr_dhalsim_walking
		#balrog:
			#balrog_block
				spr_balrog_block0: .asciiz "../img/bin/sprites/balrog/block0.bin"
			spr_balrog_block: .word 1, spr_balrog_block0
			#balrog_fjump
				spr_balrog_fjump0: .asciiz "../img/bin/sprites/balrog/fjump0.bin"
				spr_balrog_fjump1: .asciiz "../img/bin/sprites/balrog/fjump1.bin"
				spr_balrog_fjump2: .asciiz "../img/bin/sprites/balrog/fjump2.bin"
				spr_balrog_fjump3: .asciiz "../img/bin/sprites/balrog/fjump3.bin"
			spr_balrog_fjump: .word 4, spr_balrog_fjump0, spr_balrog_fjump1, spr_balrog_fjump2, spr_balrog_fjump3
			#balrog_hit
				spr_balrog_hit0: .asciiz "../img/bin/sprites/balrog/hit0.bin"
			spr_balrog_hit: .word 1, spr_balrog_hit0
			#balrog_idle
				spr_balrog_idle0: .asciiz "../img/bin/sprites/balrog/idle0.bin"
				spr_balrog_idle1: .asciiz "../img/bin/sprites/balrog/idle1.bin"
			spr_balrog_idle: .word 2, spr_balrog_idle0, spr_balrog_idle1
			#balrog_jkick
				spr_balrog_jkick0: .asciiz "../img/bin/sprites/balrog/jkick0.bin"
			spr_balrog_jkick: .word 1, spr_balrog_jkick0
			#balrog_jpunch
				spr_balrog_jpunch0: .asciiz "../img/bin/sprites/balrog/jpunch0.bin"
			spr_balrog_jpunch: .word 1, spr_balrog_jpunch0
			#balrog_jump
				spr_balrog_jump0: .asciiz "../img/bin/sprites/balrog/jump0.bin"
				spr_balrog_jump1: .asciiz "../img/bin/sprites/balrog/jump1.bin"
			spr_balrog_jump: .word 2, spr_balrog_jump0, spr_balrog_jump1
			#balrog_kick
				spr_balrog_kick0: .asciiz "../img/bin/sprites/balrog/kick0.bin"
			spr_balrog_kick: .word 1, spr_balrog_kick0
			#balrog_ko
				spr_balrog_ko0: .asciiz "../img/bin/sprites/balrog/ko0.bin"
			spr_balrog_ko: .word 1, spr_balrog_ko0
			#balrog_projectil
				spr_balrog_projectil0: .asciiz "../img/bin/sprites/balrog/projectil0.bin"
			spr_balrog_projectil: .word 1, spr_balrog_projectil0
			#balrog_punch
				spr_balrog_punch0: .asciiz "../img/bin/sprites/balrog/punch0.bin"
			spr_balrog_punch: .word 1, spr_balrog_punch0
			#balrog_special
				spr_balrog_special0: .asciiz "../img/bin/sprites/balrog/special0.bin"
				spr_balrog_special1: .asciiz "../img/bin/sprites/balrog/special1.bin"
			spr_balrog_special: .word 2, spr_balrog_special0, spr_balrog_special1
			#balrog_victory
				spr_balrog_victory0: .asciiz "../img/bin/sprites/balrog/victory0.bin"
			spr_balrog_victory: .word 1, spr_balrog_victory0
			#balrog_walking
				spr_balrog_walking0: .asciiz "../img/bin/sprites/balrog/walking0.bin"
				spr_balrog_walking1: .asciiz "../img/bin/sprites/balrog/walking1.bin"
				spr_balrog_walking2: .asciiz "../img/bin/sprites/balrog/walking2.bin"
				spr_balrog_walking3: .asciiz "../img/bin/sprites/balrog/walking3.bin"
			spr_balrog_walking: .word 4, spr_balrog_walking0, spr_balrog_walking1, spr_balrog_walking2, spr_balrog_walking3
		sprites_balrog: .word spr_balrog_block, spr_balrog_fjump, spr_balrog_hit, spr_balrog_idle, spr_balrog_jkick, spr_balrog_jpunch, spr_balrog_jump, spr_balrog_kick, spr_balrog_ko, spr_balrog_projectil, spr_balrog_punch, spr_balrog_special, spr_balrog_victory, spr_balrog_walking
		#vega:
			#vega_block
				spr_vega_block0: .asciiz "../img/bin/sprites/vega/block0.bin"
			spr_vega_block: .word 1, spr_vega_block0
			#vega_fjump
				spr_vega_fjump0: .asciiz "../img/bin/sprites/vega/fjump0.bin"
				spr_vega_fjump1: .asciiz "../img/bin/sprites/vega/fjump1.bin"
				spr_vega_fjump2: .asciiz "../img/bin/sprites/vega/fjump2.bin"
				spr_vega_fjump3: .asciiz "../img/bin/sprites/vega/fjump3.bin"
			spr_vega_fjump: .word 4, spr_vega_fjump0, spr_vega_fjump1, spr_vega_fjump2, spr_vega_fjump3
			#vega_hit
				spr_vega_hit0: .asciiz "../img/bin/sprites/vega/hit0.bin"
			spr_vega_hit: .word 1, spr_vega_hit0
			#vega_idle
				spr_vega_idle0: .asciiz "../img/bin/sprites/vega/idle0.bin"
				spr_vega_idle1: .asciiz "../img/bin/sprites/vega/idle1.bin"
			spr_vega_idle: .word 2, spr_vega_idle0, spr_vega_idle1
			#vega_jkick
				spr_vega_jkick0: .asciiz "../img/bin/sprites/vega/jkick0.bin"
			spr_vega_jkick: .word 1, spr_vega_jkick0
			#vega_jpunch
				spr_vega_jpunch0: .asciiz "../img/bin/sprites/vega/jpunch0.bin"
			spr_vega_jpunch: .word 1, spr_vega_jpunch0
			#vega_jump
				spr_vega_jump0: .asciiz "../img/bin/sprites/vega/jump0.bin"
				spr_vega_jump1: .asciiz "../img/bin/sprites/vega/jump1.bin"
			spr_vega_jump: .word 2, spr_vega_jump0, spr_vega_jump1
			#vega_kick
				spr_vega_kick0: .asciiz "../img/bin/sprites/vega/kick0.bin"
			spr_vega_kick: .word 1, spr_vega_kick0
			#vega_ko
				spr_vega_ko0: .asciiz "../img/bin/sprites/vega/ko0.bin"
			spr_vega_ko: .word 1, spr_vega_ko0
			#vega_projectil
				spr_vega_projectil0: .asciiz "../img/bin/sprites/vega/projectil0.bin"
			spr_vega_projectil: .word 1, spr_vega_projectil0
			#vega_punch
				spr_vega_punch0: .asciiz "../img/bin/sprites/vega/punch0.bin"
			spr_vega_punch: .word 1, spr_vega_punch0
			#vega_special
				spr_vega_special0: .asciiz "../img/bin/sprites/vega/special0.bin"
				spr_vega_special1: .asciiz "../img/bin/sprites/vega/special1.bin"
			spr_vega_special: .word 2, spr_vega_special0, spr_vega_special1
			#vega_victory
				spr_vega_victory0: .asciiz "../img/bin/sprites/vega/victory0.bin"
			spr_vega_victory: .word 1, spr_vega_victory0
			#vega_walking
				spr_vega_walking0: .asciiz "../img/bin/sprites/vega/walking0.bin"
				spr_vega_walking1: .asciiz "../img/bin/sprites/vega/walking1.bin"
				spr_vega_walking2: .asciiz "../img/bin/sprites/vega/walking2.bin"
				spr_vega_walking3: .asciiz "../img/bin/sprites/vega/walking3.bin"
			spr_vega_walking: .word 4, spr_vega_walking0, spr_vega_walking1, spr_vega_walking2, spr_vega_walking3
		sprites_vega: .word spr_vega_block, spr_vega_fjump, spr_vega_hit, spr_vega_idle, spr_vega_jkick, spr_vega_jpunch, spr_vega_jump, spr_vega_kick, spr_vega_ko, spr_vega_projectil, spr_vega_punch, spr_vega_special, spr_vega_victory, spr_vega_walking
		#sagat:
			#sagat_block
				spr_sagat_block0: .asciiz "../img/bin/sprites/sagat/block0.bin"
			spr_sagat_block: .word 1, spr_sagat_block0
			#sagat_fjump
				spr_sagat_fjump0: .asciiz "../img/bin/sprites/sagat/fjump0.bin"
				spr_sagat_fjump1: .asciiz "../img/bin/sprites/sagat/fjump1.bin"
				spr_sagat_fjump2: .asciiz "../img/bin/sprites/sagat/fjump2.bin"
				spr_sagat_fjump3: .asciiz "../img/bin/sprites/sagat/fjump3.bin"
			spr_sagat_fjump: .word 4, spr_sagat_fjump0, spr_sagat_fjump1, spr_sagat_fjump2, spr_sagat_fjump3
			#sagat_hit
				spr_sagat_hit0: .asciiz "../img/bin/sprites/sagat/hit0.bin"
			spr_sagat_hit: .word 1, spr_sagat_hit0
			#sagat_idle
				spr_sagat_idle0: .asciiz "../img/bin/sprites/sagat/idle0.bin"
				spr_sagat_idle1: .asciiz "../img/bin/sprites/sagat/idle1.bin"
			spr_sagat_idle: .word 2, spr_sagat_idle0, spr_sagat_idle1
			#sagat_jkick
				spr_sagat_jkick0: .asciiz "../img/bin/sprites/sagat/jkick0.bin"
			spr_sagat_jkick: .word 1, spr_sagat_jkick0
			#sagat_jpunch
				spr_sagat_jpunch0: .asciiz "../img/bin/sprites/sagat/jpunch0.bin"
			spr_sagat_jpunch: .word 1, spr_sagat_jpunch0
			#sagat_jump
				spr_sagat_jump0: .asciiz "../img/bin/sprites/sagat/jump0.bin"
				spr_sagat_jump1: .asciiz "../img/bin/sprites/sagat/jump1.bin"
			spr_sagat_jump: .word 2, spr_sagat_jump0, spr_sagat_jump1
			#sagat_kick
				spr_sagat_kick0: .asciiz "../img/bin/sprites/sagat/kick0.bin"
			spr_sagat_kick: .word 1, spr_sagat_kick0
			#sagat_ko
				spr_sagat_ko0: .asciiz "../img/bin/sprites/sagat/ko0.bin"
			spr_sagat_ko: .word 1, spr_sagat_ko0
			#sagat_projectil
				spr_sagat_projectil0: .asciiz "../img/bin/sprites/sagat/projectil0.bin"
			spr_sagat_projectil: .word 1, spr_sagat_projectil0
			#sagat_punch
				spr_sagat_punch0: .asciiz "../img/bin/sprites/sagat/punch0.bin"
			spr_sagat_punch: .word 1, spr_sagat_punch0
			#sagat_special
				spr_sagat_special0: .asciiz "../img/bin/sprites/sagat/special0.bin"
				spr_sagat_special1: .asciiz "../img/bin/sprites/sagat/special1.bin"
			spr_sagat_special: .word 2, spr_sagat_special0, spr_sagat_special1
			#sagat_victory
				spr_sagat_victory0: .asciiz "../img/bin/sprites/sagat/victory0.bin"
			spr_sagat_victory: .word 1, spr_sagat_victory0
			#sagat_walking
				spr_sagat_walking0: .asciiz "../img/bin/sprites/sagat/walking0.bin"
				spr_sagat_walking1: .asciiz "../img/bin/sprites/sagat/walking1.bin"
				spr_sagat_walking2: .asciiz "../img/bin/sprites/sagat/walking2.bin"
				spr_sagat_walking3: .asciiz "../img/bin/sprites/sagat/walking3.bin"
			spr_sagat_walking: .word 4, spr_sagat_walking0, spr_sagat_walking1, spr_sagat_walking2, spr_sagat_walking3
		sprites_sagat: .word spr_sagat_block, spr_sagat_fjump, spr_sagat_hit, spr_sagat_idle, spr_sagat_jkick, spr_sagat_jpunch, spr_sagat_jump, spr_sagat_kick, spr_sagat_ko, spr_sagat_projectil, spr_sagat_punch, spr_sagat_special, spr_sagat_victory, spr_sagat_walking
		#bison:
			#bison_block
				spr_bison_block0: .asciiz "../img/bin/sprites/bison/block0.bin"
			spr_bison_block: .word 1, spr_bison_block0
			#bison_fjump
				spr_bison_fjump0: .asciiz "../img/bin/sprites/bison/fjump0.bin"
				spr_bison_fjump1: .asciiz "../img/bin/sprites/bison/fjump1.bin"
				spr_bison_fjump2: .asciiz "../img/bin/sprites/bison/fjump2.bin"
				spr_bison_fjump3: .asciiz "../img/bin/sprites/bison/fjump3.bin"
			spr_bison_fjump: .word 4, spr_bison_fjump0, spr_bison_fjump1, spr_bison_fjump2, spr_bison_fjump3
			#bison_hit
				spr_bison_hit0: .asciiz "../img/bin/sprites/bison/hit0.bin"
			spr_bison_hit: .word 1, spr_bison_hit0
			#bison_idle
				spr_bison_idle0: .asciiz "../img/bin/sprites/bison/idle0.bin"
				spr_bison_idle1: .asciiz "../img/bin/sprites/bison/idle1.bin"
			spr_bison_idle: .word 2, spr_bison_idle0, spr_bison_idle1
			#bison_jkick
				spr_bison_jkick0: .asciiz "../img/bin/sprites/bison/jkick0.bin"
			spr_bison_jkick: .word 1, spr_bison_jkick0
			#bison_jpunch
				spr_bison_jpunch0: .asciiz "../img/bin/sprites/bison/jpunch0.bin"
			spr_bison_jpunch: .word 1, spr_bison_jpunch0
			#bison_jump
				spr_bison_jump0: .asciiz "../img/bin/sprites/bison/jump0.bin"
				spr_bison_jump1: .asciiz "../img/bin/sprites/bison/jump1.bin"
			spr_bison_jump: .word 2, spr_bison_jump0, spr_bison_jump1
			#bison_kick
				spr_bison_kick0: .asciiz "../img/bin/sprites/bison/kick0.bin"
			spr_bison_kick: .word 1, spr_bison_kick0
			#bison_ko
				spr_bison_ko0: .asciiz "../img/bin/sprites/bison/ko0.bin"
			spr_bison_ko: .word 1, spr_bison_ko0
			#bison_projectil
				spr_bison_projectil0: .asciiz "../img/bin/sprites/bison/projectil0.bin"
			spr_bison_projectil: .word 1, spr_bison_projectil0
			#bison_punch
				spr_bison_punch0: .asciiz "../img/bin/sprites/bison/punch0.bin"
			spr_bison_punch: .word 1, spr_bison_punch0
			#bison_special
				spr_bison_special0: .asciiz "../img/bin/sprites/bison/special0.bin"
				spr_bison_special1: .asciiz "../img/bin/sprites/bison/special1.bin"
			spr_bison_special: .word 2, spr_bison_special0, spr_bison_special1
			#bison_victory
				spr_bison_victory0: .asciiz "../img/bin/sprites/bison/victory0.bin"
			spr_bison_victory: .word 1, spr_bison_victory0
			#bison_walking
				spr_bison_walking0: .asciiz "../img/bin/sprites/bison/walking0.bin"
				spr_bison_walking1: .asciiz "../img/bin/sprites/bison/walking1.bin"
				spr_bison_walking2: .asciiz "../img/bin/sprites/bison/walking2.bin"
				spr_bison_walking3: .asciiz "../img/bin/sprites/bison/walking3.bin"
			spr_bison_walking: .word 4, spr_bison_walking0, spr_bison_walking1, spr_bison_walking2, spr_bison_walking3
		sprites_bison: .word spr_bison_block, spr_bison_fjump, spr_bison_hit, spr_bison_idle, spr_bison_jkick, spr_bison_jpunch, spr_bison_jump, spr_bison_kick, spr_bison_ko, spr_bison_projectil, spr_bison_punch, spr_bison_special, spr_bison_victory, spr_bison_walking
	all_sprites: .word sprites_ryu, sprites_honda, sprites_blanka, sprites_guile, sprites_ken, sprites_chunli, sprites_zangief, sprites_dhalsim, sprites_balrog, sprites_vega, sprites_sagat, sprites_bison
