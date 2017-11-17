.eqv ANIM_IDLE 0
.eqv ANIM_IDLE_LEN 2
.eqv ANIM_WALK 1
.eqv ANIM_WALK_LEN 4
.eqv ANIM_FJUMP 2
.eqv ANIM_FJUMP_LEN 4
.eqv ANIM_JUMP 3
.eqv ANIM_JUMP_LEN 2
.eqv ANIM_PUNCH 4
.eqv ANIM_PUNCH_LEN 2
.eqv ANIM_KICK 5
.eqv ANIM_KICK_LEN 2
.eqv ANIM_SPECIAL 6
.eqv ANIM_SPECIAL_LEN 2

.data
	#sprites:
		#ryu:
			#ryu_idle
				spr_ryu_idle0: .asciiz "../img/bin/sprites/ryu/idle0.bin"
				spr_ryu_idle1: .asciiz "../img/bin/sprites/ryu/idle1.bin"
			spr_ryu_idle: .word 2, spr_ryu_idle0, spr_ryu_idle1
			#ryu_walk
				spr_ryu_walk0: .asciiz "../img/bin/sprites/ryu/walk0.bin"
				spr_ryu_walk1: .asciiz "../img/bin/sprites/ryu/walk1.bin"
				spr_ryu_walk2: .asciiz "../img/bin/sprites/ryu/walk2.bin"
				spr_ryu_walk3: .asciiz "../img/bin/sprites/ryu/walk3.bin"
			spr_ryu_walk: .word 4, spr_ryu_walk0, spr_ryu_walk1, spr_ryu_walk2, spr_ryu_walk3
			#ryu_fjump
				spr_ryu_fjump0: .asciiz "../img/bin/sprites/ryu/fjump0.bin"
				spr_ryu_fjump1: .asciiz "../img/bin/sprites/ryu/fjump1.bin"
				spr_ryu_fjump2: .asciiz "../img/bin/sprites/ryu/fjump2.bin"
				spr_ryu_fjump3: .asciiz "../img/bin/sprites/ryu/fjump3.bin"
			spr_ryu_fjump: .word 4, spr_ryu_fjump0, spr_ryu_fjump1, spr_ryu_fjump2, spr_ryu_fjump3
			#ryu_jump
				spr_ryu_jump0: .asciiz "../img/bin/sprites/ryu/jump0.bin"
				spr_ryu_jump1: .asciiz "../img/bin/sprites/ryu/jump1.bin"
			spr_ryu_jump: .word 2, spr_ryu_jump0, spr_ryu_jump1
			#ryu_punch
				spr_ryu_punch0: .asciiz "../img/bin/sprites/ryu/punch0.bin"
				spr_ryu_punch1: .asciiz "../img/bin/sprites/ryu/punch1.bin"
			spr_ryu_punch: .word 2, spr_ryu_punch0, spr_ryu_punch1
			#ryu_kick
				spr_ryu_kick0: .asciiz "../img/bin/sprites/ryu/kick0.bin"
				spr_ryu_kick1: .asciiz "../img/bin/sprites/ryu/kick1.bin"
			spr_ryu_kick: .word 2, spr_ryu_kick0, spr_ryu_kick1
			#ryu_special
				spr_ryu_special0: .asciiz "../img/bin/sprites/ryu/special0.bin"
				spr_ryu_special1: .asciiz "../img/bin/sprites/ryu/special1.bin"
			spr_ryu_special: .word 2, spr_ryu_special0, spr_ryu_special1
		sprites_ryu: .word spr_ryu_idle, spr_ryu_walk, spr_ryu_fjump, spr_ryu_jump, spr_ryu_punch, spr_ryu_kick, spr_ryu_special
		#honda:
			#honda_idle
				spr_honda_idle0: .asciiz "../img/bin/sprites/honda/idle0.bin"
				spr_honda_idle1: .asciiz "../img/bin/sprites/honda/idle1.bin"
			spr_honda_idle: .word 2, spr_honda_idle0, spr_honda_idle1
			#honda_walk
				spr_honda_walk0: .asciiz "../img/bin/sprites/honda/walk0.bin"
				spr_honda_walk1: .asciiz "../img/bin/sprites/honda/walk1.bin"
				spr_honda_walk2: .asciiz "../img/bin/sprites/honda/walk2.bin"
				spr_honda_walk3: .asciiz "../img/bin/sprites/honda/walk3.bin"
			spr_honda_walk: .word 4, spr_honda_walk0, spr_honda_walk1, spr_honda_walk2, spr_honda_walk3
			#honda_fjump
				spr_honda_fjump0: .asciiz "../img/bin/sprites/honda/fjump0.bin"
				spr_honda_fjump1: .asciiz "../img/bin/sprites/honda/fjump1.bin"
				spr_honda_fjump2: .asciiz "../img/bin/sprites/honda/fjump2.bin"
				spr_honda_fjump3: .asciiz "../img/bin/sprites/honda/fjump3.bin"
			spr_honda_fjump: .word 4, spr_honda_fjump0, spr_honda_fjump1, spr_honda_fjump2, spr_honda_fjump3
			#honda_jump
				spr_honda_jump0: .asciiz "../img/bin/sprites/honda/jump0.bin"
				spr_honda_jump1: .asciiz "../img/bin/sprites/honda/jump1.bin"
			spr_honda_jump: .word 2, spr_honda_jump0, spr_honda_jump1
			#honda_punch
				spr_honda_punch0: .asciiz "../img/bin/sprites/honda/punch0.bin"
				spr_honda_punch1: .asciiz "../img/bin/sprites/honda/punch1.bin"
			spr_honda_punch: .word 2, spr_honda_punch0, spr_honda_punch1
			#honda_kick
				spr_honda_kick0: .asciiz "../img/bin/sprites/honda/kick0.bin"
				spr_honda_kick1: .asciiz "../img/bin/sprites/honda/kick1.bin"
			spr_honda_kick: .word 2, spr_honda_kick0, spr_honda_kick1
			#honda_special
				spr_honda_special0: .asciiz "../img/bin/sprites/honda/special0.bin"
				spr_honda_special1: .asciiz "../img/bin/sprites/honda/special1.bin"
			spr_honda_special: .word 2, spr_honda_special0, spr_honda_special1
		sprites_honda: .word spr_honda_idle, spr_honda_walk, spr_honda_fjump, spr_honda_jump, spr_honda_punch, spr_honda_kick, spr_honda_special
		#blanka:
			#blanka_idle
				spr_blanka_idle0: .asciiz "../img/bin/sprites/blanka/idle0.bin"
				spr_blanka_idle1: .asciiz "../img/bin/sprites/blanka/idle1.bin"
			spr_blanka_idle: .word 2, spr_blanka_idle0, spr_blanka_idle1
			#blanka_walk
				spr_blanka_walk0: .asciiz "../img/bin/sprites/blanka/walk0.bin"
				spr_blanka_walk1: .asciiz "../img/bin/sprites/blanka/walk1.bin"
				spr_blanka_walk2: .asciiz "../img/bin/sprites/blanka/walk2.bin"
				spr_blanka_walk3: .asciiz "../img/bin/sprites/blanka/walk3.bin"
			spr_blanka_walk: .word 4, spr_blanka_walk0, spr_blanka_walk1, spr_blanka_walk2, spr_blanka_walk3
			#blanka_fjump
				spr_blanka_fjump0: .asciiz "../img/bin/sprites/blanka/fjump0.bin"
				spr_blanka_fjump1: .asciiz "../img/bin/sprites/blanka/fjump1.bin"
				spr_blanka_fjump2: .asciiz "../img/bin/sprites/blanka/fjump2.bin"
				spr_blanka_fjump3: .asciiz "../img/bin/sprites/blanka/fjump3.bin"
			spr_blanka_fjump: .word 4, spr_blanka_fjump0, spr_blanka_fjump1, spr_blanka_fjump2, spr_blanka_fjump3
			#blanka_jump
				spr_blanka_jump0: .asciiz "../img/bin/sprites/blanka/jump0.bin"
				spr_blanka_jump1: .asciiz "../img/bin/sprites/blanka/jump1.bin"
			spr_blanka_jump: .word 2, spr_blanka_jump0, spr_blanka_jump1
			#blanka_punch
				spr_blanka_punch0: .asciiz "../img/bin/sprites/blanka/punch0.bin"
				spr_blanka_punch1: .asciiz "../img/bin/sprites/blanka/punch1.bin"
			spr_blanka_punch: .word 2, spr_blanka_punch0, spr_blanka_punch1
			#blanka_kick
				spr_blanka_kick0: .asciiz "../img/bin/sprites/blanka/kick0.bin"
				spr_blanka_kick1: .asciiz "../img/bin/sprites/blanka/kick1.bin"
			spr_blanka_kick: .word 2, spr_blanka_kick0, spr_blanka_kick1
			#blanka_special
				spr_blanka_special0: .asciiz "../img/bin/sprites/blanka/special0.bin"
				spr_blanka_special1: .asciiz "../img/bin/sprites/blanka/special1.bin"
			spr_blanka_special: .word 2, spr_blanka_special0, spr_blanka_special1
		sprites_blanka: .word spr_blanka_idle, spr_blanka_walk, spr_blanka_fjump, spr_blanka_jump, spr_blanka_punch, spr_blanka_kick, spr_blanka_special
		#guile:
			#guile_idle
				spr_guile_idle0: .asciiz "../img/bin/sprites/guile/idle0.bin"
				spr_guile_idle1: .asciiz "../img/bin/sprites/guile/idle1.bin"
			spr_guile_idle: .word 2, spr_guile_idle0, spr_guile_idle1
			#guile_walk
				spr_guile_walk0: .asciiz "../img/bin/sprites/guile/walk0.bin"
				spr_guile_walk1: .asciiz "../img/bin/sprites/guile/walk1.bin"
				spr_guile_walk2: .asciiz "../img/bin/sprites/guile/walk2.bin"
				spr_guile_walk3: .asciiz "../img/bin/sprites/guile/walk3.bin"
			spr_guile_walk: .word 4, spr_guile_walk0, spr_guile_walk1, spr_guile_walk2, spr_guile_walk3
			#guile_fjump
				spr_guile_fjump0: .asciiz "../img/bin/sprites/guile/fjump0.bin"
				spr_guile_fjump1: .asciiz "../img/bin/sprites/guile/fjump1.bin"
				spr_guile_fjump2: .asciiz "../img/bin/sprites/guile/fjump2.bin"
				spr_guile_fjump3: .asciiz "../img/bin/sprites/guile/fjump3.bin"
			spr_guile_fjump: .word 4, spr_guile_fjump0, spr_guile_fjump1, spr_guile_fjump2, spr_guile_fjump3
			#guile_jump
				spr_guile_jump0: .asciiz "../img/bin/sprites/guile/jump0.bin"
				spr_guile_jump1: .asciiz "../img/bin/sprites/guile/jump1.bin"
			spr_guile_jump: .word 2, spr_guile_jump0, spr_guile_jump1
			#guile_punch
				spr_guile_punch0: .asciiz "../img/bin/sprites/guile/punch0.bin"
				spr_guile_punch1: .asciiz "../img/bin/sprites/guile/punch1.bin"
			spr_guile_punch: .word 2, spr_guile_punch0, spr_guile_punch1
			#guile_kick
				spr_guile_kick0: .asciiz "../img/bin/sprites/guile/kick0.bin"
				spr_guile_kick1: .asciiz "../img/bin/sprites/guile/kick1.bin"
			spr_guile_kick: .word 2, spr_guile_kick0, spr_guile_kick1
			#guile_special
				spr_guile_special0: .asciiz "../img/bin/sprites/guile/special0.bin"
				spr_guile_special1: .asciiz "../img/bin/sprites/guile/special1.bin"
			spr_guile_special: .word 2, spr_guile_special0, spr_guile_special1
		sprites_guile: .word spr_guile_idle, spr_guile_walk, spr_guile_fjump, spr_guile_jump, spr_guile_punch, spr_guile_kick, spr_guile_special
		#ken:
			#ken_idle
				spr_ken_idle0: .asciiz "../img/bin/sprites/ken/idle0.bin"
				spr_ken_idle1: .asciiz "../img/bin/sprites/ken/idle1.bin"
			spr_ken_idle: .word 2, spr_ken_idle0, spr_ken_idle1
			#ken_walk
				spr_ken_walk0: .asciiz "../img/bin/sprites/ken/walk0.bin"
				spr_ken_walk1: .asciiz "../img/bin/sprites/ken/walk1.bin"
				spr_ken_walk2: .asciiz "../img/bin/sprites/ken/walk2.bin"
				spr_ken_walk3: .asciiz "../img/bin/sprites/ken/walk3.bin"
			spr_ken_walk: .word 4, spr_ken_walk0, spr_ken_walk1, spr_ken_walk2, spr_ken_walk3
			#ken_fjump
				spr_ken_fjump0: .asciiz "../img/bin/sprites/ken/fjump0.bin"
				spr_ken_fjump1: .asciiz "../img/bin/sprites/ken/fjump1.bin"
				spr_ken_fjump2: .asciiz "../img/bin/sprites/ken/fjump2.bin"
				spr_ken_fjump3: .asciiz "../img/bin/sprites/ken/fjump3.bin"
			spr_ken_fjump: .word 4, spr_ken_fjump0, spr_ken_fjump1, spr_ken_fjump2, spr_ken_fjump3
			#ken_jump
				spr_ken_jump0: .asciiz "../img/bin/sprites/ken/jump0.bin"
				spr_ken_jump1: .asciiz "../img/bin/sprites/ken/jump1.bin"
			spr_ken_jump: .word 2, spr_ken_jump0, spr_ken_jump1
			#ken_punch
				spr_ken_punch0: .asciiz "../img/bin/sprites/ken/punch0.bin"
				spr_ken_punch1: .asciiz "../img/bin/sprites/ken/punch1.bin"
			spr_ken_punch: .word 2, spr_ken_punch0, spr_ken_punch1
			#ken_kick
				spr_ken_kick0: .asciiz "../img/bin/sprites/ken/kick0.bin"
				spr_ken_kick1: .asciiz "../img/bin/sprites/ken/kick1.bin"
			spr_ken_kick: .word 2, spr_ken_kick0, spr_ken_kick1
			#ken_special
				spr_ken_special0: .asciiz "../img/bin/sprites/ken/special0.bin"
				spr_ken_special1: .asciiz "../img/bin/sprites/ken/special1.bin"
			spr_ken_special: .word 2, spr_ken_special0, spr_ken_special1
		sprites_ken: .word spr_ken_idle, spr_ken_walk, spr_ken_fjump, spr_ken_jump, spr_ken_punch, spr_ken_kick, spr_ken_special
		#chunli:
			#chunli_idle
				spr_chunli_idle0: .asciiz "../img/bin/sprites/chunli/idle0.bin"
				spr_chunli_idle1: .asciiz "../img/bin/sprites/chunli/idle1.bin"
			spr_chunli_idle: .word 2, spr_chunli_idle0, spr_chunli_idle1
			#chunli_walk
				spr_chunli_walk0: .asciiz "../img/bin/sprites/chunli/walk0.bin"
				spr_chunli_walk1: .asciiz "../img/bin/sprites/chunli/walk1.bin"
				spr_chunli_walk2: .asciiz "../img/bin/sprites/chunli/walk2.bin"
				spr_chunli_walk3: .asciiz "../img/bin/sprites/chunli/walk3.bin"
			spr_chunli_walk: .word 4, spr_chunli_walk0, spr_chunli_walk1, spr_chunli_walk2, spr_chunli_walk3
			#chunli_fjump
				spr_chunli_fjump0: .asciiz "../img/bin/sprites/chunli/fjump0.bin"
				spr_chunli_fjump1: .asciiz "../img/bin/sprites/chunli/fjump1.bin"
				spr_chunli_fjump2: .asciiz "../img/bin/sprites/chunli/fjump2.bin"
				spr_chunli_fjump3: .asciiz "../img/bin/sprites/chunli/fjump3.bin"
			spr_chunli_fjump: .word 4, spr_chunli_fjump0, spr_chunli_fjump1, spr_chunli_fjump2, spr_chunli_fjump3
			#chunli_jump
				spr_chunli_jump0: .asciiz "../img/bin/sprites/chunli/jump0.bin"
				spr_chunli_jump1: .asciiz "../img/bin/sprites/chunli/jump1.bin"
			spr_chunli_jump: .word 2, spr_chunli_jump0, spr_chunli_jump1
			#chunli_punch
				spr_chunli_punch0: .asciiz "../img/bin/sprites/chunli/punch0.bin"
				spr_chunli_punch1: .asciiz "../img/bin/sprites/chunli/punch1.bin"
			spr_chunli_punch: .word 2, spr_chunli_punch0, spr_chunli_punch1
			#chunli_kick
				spr_chunli_kick0: .asciiz "../img/bin/sprites/chunli/kick0.bin"
				spr_chunli_kick1: .asciiz "../img/bin/sprites/chunli/kick1.bin"
			spr_chunli_kick: .word 2, spr_chunli_kick0, spr_chunli_kick1
			#chunli_special
				spr_chunli_special0: .asciiz "../img/bin/sprites/chunli/special0.bin"
				spr_chunli_special1: .asciiz "../img/bin/sprites/chunli/special1.bin"
			spr_chunli_special: .word 2, spr_chunli_special0, spr_chunli_special1
		sprites_chunli: .word spr_chunli_idle, spr_chunli_walk, spr_chunli_fjump, spr_chunli_jump, spr_chunli_punch, spr_chunli_kick, spr_chunli_special
		#zangief:
			#zangief_idle
				spr_zangief_idle0: .asciiz "../img/bin/sprites/zangief/idle0.bin"
				spr_zangief_idle1: .asciiz "../img/bin/sprites/zangief/idle1.bin"
			spr_zangief_idle: .word 2, spr_zangief_idle0, spr_zangief_idle1
			#zangief_walk
				spr_zangief_walk0: .asciiz "../img/bin/sprites/zangief/walk0.bin"
				spr_zangief_walk1: .asciiz "../img/bin/sprites/zangief/walk1.bin"
				spr_zangief_walk2: .asciiz "../img/bin/sprites/zangief/walk2.bin"
				spr_zangief_walk3: .asciiz "../img/bin/sprites/zangief/walk3.bin"
			spr_zangief_walk: .word 4, spr_zangief_walk0, spr_zangief_walk1, spr_zangief_walk2, spr_zangief_walk3
			#zangief_fjump
				spr_zangief_fjump0: .asciiz "../img/bin/sprites/zangief/fjump0.bin"
				spr_zangief_fjump1: .asciiz "../img/bin/sprites/zangief/fjump1.bin"
				spr_zangief_fjump2: .asciiz "../img/bin/sprites/zangief/fjump2.bin"
				spr_zangief_fjump3: .asciiz "../img/bin/sprites/zangief/fjump3.bin"
			spr_zangief_fjump: .word 4, spr_zangief_fjump0, spr_zangief_fjump1, spr_zangief_fjump2, spr_zangief_fjump3
			#zangief_jump
				spr_zangief_jump0: .asciiz "../img/bin/sprites/zangief/jump0.bin"
				spr_zangief_jump1: .asciiz "../img/bin/sprites/zangief/jump1.bin"
			spr_zangief_jump: .word 2, spr_zangief_jump0, spr_zangief_jump1
			#zangief_punch
				spr_zangief_punch0: .asciiz "../img/bin/sprites/zangief/punch0.bin"
				spr_zangief_punch1: .asciiz "../img/bin/sprites/zangief/punch1.bin"
			spr_zangief_punch: .word 2, spr_zangief_punch0, spr_zangief_punch1
			#zangief_kick
				spr_zangief_kick0: .asciiz "../img/bin/sprites/zangief/kick0.bin"
				spr_zangief_kick1: .asciiz "../img/bin/sprites/zangief/kick1.bin"
			spr_zangief_kick: .word 2, spr_zangief_kick0, spr_zangief_kick1
			#zangief_special
				spr_zangief_special0: .asciiz "../img/bin/sprites/zangief/special0.bin"
				spr_zangief_special1: .asciiz "../img/bin/sprites/zangief/special1.bin"
			spr_zangief_special: .word 2, spr_zangief_special0, spr_zangief_special1
		sprites_zangief: .word spr_zangief_idle, spr_zangief_walk, spr_zangief_fjump, spr_zangief_jump, spr_zangief_punch, spr_zangief_kick, spr_zangief_special
		#dhalsim:
			#dhalsim_idle
				spr_dhalsim_idle0: .asciiz "../img/bin/sprites/dhalsim/idle0.bin"
				spr_dhalsim_idle1: .asciiz "../img/bin/sprites/dhalsim/idle1.bin"
			spr_dhalsim_idle: .word 2, spr_dhalsim_idle0, spr_dhalsim_idle1
			#dhalsim_walk
				spr_dhalsim_walk0: .asciiz "../img/bin/sprites/dhalsim/walk0.bin"
				spr_dhalsim_walk1: .asciiz "../img/bin/sprites/dhalsim/walk1.bin"
				spr_dhalsim_walk2: .asciiz "../img/bin/sprites/dhalsim/walk2.bin"
				spr_dhalsim_walk3: .asciiz "../img/bin/sprites/dhalsim/walk3.bin"
			spr_dhalsim_walk: .word 4, spr_dhalsim_walk0, spr_dhalsim_walk1, spr_dhalsim_walk2, spr_dhalsim_walk3
			#dhalsim_fjump
				spr_dhalsim_fjump0: .asciiz "../img/bin/sprites/dhalsim/fjump0.bin"
				spr_dhalsim_fjump1: .asciiz "../img/bin/sprites/dhalsim/fjump1.bin"
				spr_dhalsim_fjump2: .asciiz "../img/bin/sprites/dhalsim/fjump2.bin"
				spr_dhalsim_fjump3: .asciiz "../img/bin/sprites/dhalsim/fjump3.bin"
			spr_dhalsim_fjump: .word 4, spr_dhalsim_fjump0, spr_dhalsim_fjump1, spr_dhalsim_fjump2, spr_dhalsim_fjump3
			#dhalsim_jump
				spr_dhalsim_jump0: .asciiz "../img/bin/sprites/dhalsim/jump0.bin"
				spr_dhalsim_jump1: .asciiz "../img/bin/sprites/dhalsim/jump1.bin"
			spr_dhalsim_jump: .word 2, spr_dhalsim_jump0, spr_dhalsim_jump1
			#dhalsim_punch
				spr_dhalsim_punch0: .asciiz "../img/bin/sprites/dhalsim/punch0.bin"
				spr_dhalsim_punch1: .asciiz "../img/bin/sprites/dhalsim/punch1.bin"
			spr_dhalsim_punch: .word 2, spr_dhalsim_punch0, spr_dhalsim_punch1
			#dhalsim_kick
				spr_dhalsim_kick0: .asciiz "../img/bin/sprites/dhalsim/kick0.bin"
				spr_dhalsim_kick1: .asciiz "../img/bin/sprites/dhalsim/kick1.bin"
			spr_dhalsim_kick: .word 2, spr_dhalsim_kick0, spr_dhalsim_kick1
			#dhalsim_special
				spr_dhalsim_special0: .asciiz "../img/bin/sprites/dhalsim/special0.bin"
				spr_dhalsim_special1: .asciiz "../img/bin/sprites/dhalsim/special1.bin"
			spr_dhalsim_special: .word 2, spr_dhalsim_special0, spr_dhalsim_special1
		sprites_dhalsim: .word spr_dhalsim_idle, spr_dhalsim_walk, spr_dhalsim_fjump, spr_dhalsim_jump, spr_dhalsim_punch, spr_dhalsim_kick, spr_dhalsim_special
		#balrog:
			#balrog_idle
				spr_balrog_idle0: .asciiz "../img/bin/sprites/balrog/idle0.bin"
				spr_balrog_idle1: .asciiz "../img/bin/sprites/balrog/idle1.bin"
			spr_balrog_idle: .word 2, spr_balrog_idle0, spr_balrog_idle1
			#balrog_walk
				spr_balrog_walk0: .asciiz "../img/bin/sprites/balrog/walk0.bin"
				spr_balrog_walk1: .asciiz "../img/bin/sprites/balrog/walk1.bin"
				spr_balrog_walk2: .asciiz "../img/bin/sprites/balrog/walk2.bin"
				spr_balrog_walk3: .asciiz "../img/bin/sprites/balrog/walk3.bin"
			spr_balrog_walk: .word 4, spr_balrog_walk0, spr_balrog_walk1, spr_balrog_walk2, spr_balrog_walk3
			#balrog_fjump
				spr_balrog_fjump0: .asciiz "../img/bin/sprites/balrog/fjump0.bin"
				spr_balrog_fjump1: .asciiz "../img/bin/sprites/balrog/fjump1.bin"
				spr_balrog_fjump2: .asciiz "../img/bin/sprites/balrog/fjump2.bin"
				spr_balrog_fjump3: .asciiz "../img/bin/sprites/balrog/fjump3.bin"
			spr_balrog_fjump: .word 4, spr_balrog_fjump0, spr_balrog_fjump1, spr_balrog_fjump2, spr_balrog_fjump3
			#balrog_jump
				spr_balrog_jump0: .asciiz "../img/bin/sprites/balrog/jump0.bin"
				spr_balrog_jump1: .asciiz "../img/bin/sprites/balrog/jump1.bin"
			spr_balrog_jump: .word 2, spr_balrog_jump0, spr_balrog_jump1
			#balrog_punch
				spr_balrog_punch0: .asciiz "../img/bin/sprites/balrog/punch0.bin"
				spr_balrog_punch1: .asciiz "../img/bin/sprites/balrog/punch1.bin"
			spr_balrog_punch: .word 2, spr_balrog_punch0, spr_balrog_punch1
			#balrog_kick
				spr_balrog_kick0: .asciiz "../img/bin/sprites/balrog/kick0.bin"
				spr_balrog_kick1: .asciiz "../img/bin/sprites/balrog/kick1.bin"
			spr_balrog_kick: .word 2, spr_balrog_kick0, spr_balrog_kick1
			#balrog_special
				spr_balrog_special0: .asciiz "../img/bin/sprites/balrog/special0.bin"
				spr_balrog_special1: .asciiz "../img/bin/sprites/balrog/special1.bin"
			spr_balrog_special: .word 2, spr_balrog_special0, spr_balrog_special1
		sprites_balrog: .word spr_balrog_idle, spr_balrog_walk, spr_balrog_fjump, spr_balrog_jump, spr_balrog_punch, spr_balrog_kick, spr_balrog_special
		#vega:
			#vega_idle
				spr_vega_idle0: .asciiz "../img/bin/sprites/vega/idle0.bin"
				spr_vega_idle1: .asciiz "../img/bin/sprites/vega/idle1.bin"
			spr_vega_idle: .word 2, spr_vega_idle0, spr_vega_idle1
			#vega_walk
				spr_vega_walk0: .asciiz "../img/bin/sprites/vega/walk0.bin"
				spr_vega_walk1: .asciiz "../img/bin/sprites/vega/walk1.bin"
				spr_vega_walk2: .asciiz "../img/bin/sprites/vega/walk2.bin"
				spr_vega_walk3: .asciiz "../img/bin/sprites/vega/walk3.bin"
			spr_vega_walk: .word 4, spr_vega_walk0, spr_vega_walk1, spr_vega_walk2, spr_vega_walk3
			#vega_fjump
				spr_vega_fjump0: .asciiz "../img/bin/sprites/vega/fjump0.bin"
				spr_vega_fjump1: .asciiz "../img/bin/sprites/vega/fjump1.bin"
				spr_vega_fjump2: .asciiz "../img/bin/sprites/vega/fjump2.bin"
				spr_vega_fjump3: .asciiz "../img/bin/sprites/vega/fjump3.bin"
			spr_vega_fjump: .word 4, spr_vega_fjump0, spr_vega_fjump1, spr_vega_fjump2, spr_vega_fjump3
			#vega_jump
				spr_vega_jump0: .asciiz "../img/bin/sprites/vega/jump0.bin"
				spr_vega_jump1: .asciiz "../img/bin/sprites/vega/jump1.bin"
			spr_vega_jump: .word 2, spr_vega_jump0, spr_vega_jump1
			#vega_punch
				spr_vega_punch0: .asciiz "../img/bin/sprites/vega/punch0.bin"
				spr_vega_punch1: .asciiz "../img/bin/sprites/vega/punch1.bin"
			spr_vega_punch: .word 2, spr_vega_punch0, spr_vega_punch1
			#vega_kick
				spr_vega_kick0: .asciiz "../img/bin/sprites/vega/kick0.bin"
				spr_vega_kick1: .asciiz "../img/bin/sprites/vega/kick1.bin"
			spr_vega_kick: .word 2, spr_vega_kick0, spr_vega_kick1
			#vega_special
				spr_vega_special0: .asciiz "../img/bin/sprites/vega/special0.bin"
				spr_vega_special1: .asciiz "../img/bin/sprites/vega/special1.bin"
			spr_vega_special: .word 2, spr_vega_special0, spr_vega_special1
		sprites_vega: .word spr_vega_idle, spr_vega_walk, spr_vega_fjump, spr_vega_jump, spr_vega_punch, spr_vega_kick, spr_vega_special
		#sagat:
			#sagat_idle
				spr_sagat_idle0: .asciiz "../img/bin/sprites/sagat/idle0.bin"
				spr_sagat_idle1: .asciiz "../img/bin/sprites/sagat/idle1.bin"
			spr_sagat_idle: .word 2, spr_sagat_idle0, spr_sagat_idle1
			#sagat_walk
				spr_sagat_walk0: .asciiz "../img/bin/sprites/sagat/walk0.bin"
				spr_sagat_walk1: .asciiz "../img/bin/sprites/sagat/walk1.bin"
				spr_sagat_walk2: .asciiz "../img/bin/sprites/sagat/walk2.bin"
				spr_sagat_walk3: .asciiz "../img/bin/sprites/sagat/walk3.bin"
			spr_sagat_walk: .word 4, spr_sagat_walk0, spr_sagat_walk1, spr_sagat_walk2, spr_sagat_walk3
			#sagat_fjump
				spr_sagat_fjump0: .asciiz "../img/bin/sprites/sagat/fjump0.bin"
				spr_sagat_fjump1: .asciiz "../img/bin/sprites/sagat/fjump1.bin"
				spr_sagat_fjump2: .asciiz "../img/bin/sprites/sagat/fjump2.bin"
				spr_sagat_fjump3: .asciiz "../img/bin/sprites/sagat/fjump3.bin"
			spr_sagat_fjump: .word 4, spr_sagat_fjump0, spr_sagat_fjump1, spr_sagat_fjump2, spr_sagat_fjump3
			#sagat_jump
				spr_sagat_jump0: .asciiz "../img/bin/sprites/sagat/jump0.bin"
				spr_sagat_jump1: .asciiz "../img/bin/sprites/sagat/jump1.bin"
			spr_sagat_jump: .word 2, spr_sagat_jump0, spr_sagat_jump1
			#sagat_punch
				spr_sagat_punch0: .asciiz "../img/bin/sprites/sagat/punch0.bin"
				spr_sagat_punch1: .asciiz "../img/bin/sprites/sagat/punch1.bin"
			spr_sagat_punch: .word 2, spr_sagat_punch0, spr_sagat_punch1
			#sagat_kick
				spr_sagat_kick0: .asciiz "../img/bin/sprites/sagat/kick0.bin"
				spr_sagat_kick1: .asciiz "../img/bin/sprites/sagat/kick1.bin"
			spr_sagat_kick: .word 2, spr_sagat_kick0, spr_sagat_kick1
			#sagat_special
				spr_sagat_special0: .asciiz "../img/bin/sprites/sagat/special0.bin"
				spr_sagat_special1: .asciiz "../img/bin/sprites/sagat/special1.bin"
			spr_sagat_special: .word 2, spr_sagat_special0, spr_sagat_special1
		sprites_sagat: .word spr_sagat_idle, spr_sagat_walk, spr_sagat_fjump, spr_sagat_jump, spr_sagat_punch, spr_sagat_kick, spr_sagat_special
		#bison:
			#bison_idle
				spr_bison_idle0: .asciiz "../img/bin/sprites/bison/idle0.bin"
				spr_bison_idle1: .asciiz "../img/bin/sprites/bison/idle1.bin"
			spr_bison_idle: .word 2, spr_bison_idle0, spr_bison_idle1
			#bison_walk
				spr_bison_walk0: .asciiz "../img/bin/sprites/bison/walk0.bin"
				spr_bison_walk1: .asciiz "../img/bin/sprites/bison/walk1.bin"
				spr_bison_walk2: .asciiz "../img/bin/sprites/bison/walk2.bin"
				spr_bison_walk3: .asciiz "../img/bin/sprites/bison/walk3.bin"
			spr_bison_walk: .word 4, spr_bison_walk0, spr_bison_walk1, spr_bison_walk2, spr_bison_walk3
			#bison_fjump
				spr_bison_fjump0: .asciiz "../img/bin/sprites/bison/fjump0.bin"
				spr_bison_fjump1: .asciiz "../img/bin/sprites/bison/fjump1.bin"
				spr_bison_fjump2: .asciiz "../img/bin/sprites/bison/fjump2.bin"
				spr_bison_fjump3: .asciiz "../img/bin/sprites/bison/fjump3.bin"
			spr_bison_fjump: .word 4, spr_bison_fjump0, spr_bison_fjump1, spr_bison_fjump2, spr_bison_fjump3
			#bison_jump
				spr_bison_jump0: .asciiz "../img/bin/sprites/bison/jump0.bin"
				spr_bison_jump1: .asciiz "../img/bin/sprites/bison/jump1.bin"
			spr_bison_jump: .word 2, spr_bison_jump0, spr_bison_jump1
			#bison_punch
				spr_bison_punch0: .asciiz "../img/bin/sprites/bison/punch0.bin"
				spr_bison_punch1: .asciiz "../img/bin/sprites/bison/punch1.bin"
			spr_bison_punch: .word 2, spr_bison_punch0, spr_bison_punch1
			#bison_kick
				spr_bison_kick0: .asciiz "../img/bin/sprites/bison/kick0.bin"
				spr_bison_kick1: .asciiz "../img/bin/sprites/bison/kick1.bin"
			spr_bison_kick: .word 2, spr_bison_kick0, spr_bison_kick1
			#bison_special
				spr_bison_special0: .asciiz "../img/bin/sprites/bison/special0.bin"
				spr_bison_special1: .asciiz "../img/bin/sprites/bison/special1.bin"
			spr_bison_special: .word 2, spr_bison_special0, spr_bison_special1
		sprites_bison: .word spr_bison_idle, spr_bison_walk, spr_bison_fjump, spr_bison_jump, spr_bison_punch, spr_bison_kick, spr_bison_special
	all_sprites: .word sprites_ryu, sprites_honda, sprites_blanka, sprites_guile, sprites_ken, sprites_chunli, sprites_zangief, sprites_dhalsim, sprites_balrog, sprites_vega, sprites_sagat, sprites_bison
