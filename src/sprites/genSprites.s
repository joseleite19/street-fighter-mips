.eqv ANIM_BLOCK 0
.eqv ANIM_BLOCK_LEN 1
.eqv ANIM_HIT 1
.eqv ANIM_HIT_LEN 1
.eqv ANIM_IDLE 2
.eqv ANIM_IDLE_LEN 2
.eqv ANIM_JKICK 3
.eqv ANIM_JKICK_LEN 1
.eqv ANIM_JPUNCH 4
.eqv ANIM_JPUNCH_LEN 1
.eqv ANIM_JUMP 5
.eqv ANIM_JUMP_LEN 2
.eqv ANIM_KO 6
.eqv ANIM_KO_LEN 1
.eqv ANIM_POWER 7
.eqv ANIM_POWER_LEN 3
.eqv ANIM_PROJECTILE 8
.eqv ANIM_PROJECTILE_LEN 1
.eqv ANIM_SKICK 9
.eqv ANIM_SKICK_LEN 1
.eqv ANIM_SPUNCH 10
.eqv ANIM_SPUNCH_LEN 1
.eqv ANIM_VICTORY 11
.eqv ANIM_VICTORY_LEN 1
.eqv ANIM_WALKING 12
.eqv ANIM_WALKING_LEN 4

.data
	#sprites:
		#ryu1:
			#ryu1_block
				spr_ryu1_block0: .asciiz "../img/bin/sprites/ryu/block_1.bin"
			spr_ryu1_block: .word 1, spr_ryu1_block0
			#ryu1_hit
				spr_ryu1_hit0: .asciiz "../img/bin/sprites/ryu/hit_1.bin"
			spr_ryu1_hit: .word 1, spr_ryu1_hit0
			#ryu1_idle
				spr_ryu1_idle0: .asciiz "../img/bin/sprites/ryu/idle0_1.bin"
				spr_ryu1_idle1: .asciiz "../img/bin/sprites/ryu/idle1_1.bin"
			spr_ryu1_idle: .word 2, spr_ryu1_idle0, spr_ryu1_idle1
			#ryu1_jkick
				spr_ryu1_jkick0: .asciiz "../img/bin/sprites/ryu/jkick_1.bin"
			spr_ryu1_jkick: .word 1, spr_ryu1_jkick0
			#ryu1_jpunch
				spr_ryu1_jpunch0: .asciiz "../img/bin/sprites/ryu/jpunch_1.bin"
			spr_ryu1_jpunch: .word 1, spr_ryu1_jpunch0
			#ryu1_jump
				spr_ryu1_jump0: .asciiz "../img/bin/sprites/ryu/jump0_1.bin"
				spr_ryu1_jump1: .asciiz "../img/bin/sprites/ryu/jump1_1.bin"
			spr_ryu1_jump: .word 2, spr_ryu1_jump0, spr_ryu1_jump1
			#ryu1_ko
				spr_ryu1_ko0: .asciiz "../img/bin/sprites/ryu/ko_1.bin"
			spr_ryu1_ko: .word 1, spr_ryu1_ko0
			#ryu1_power
				spr_ryu1_power0: .asciiz "../img/bin/sprites/ryu/power0_1.bin"
				spr_ryu1_power1: .asciiz "../img/bin/sprites/ryu/power1_1.bin"
				spr_ryu1_power2: .asciiz "../img/bin/sprites/ryu/power2_1.bin"
			spr_ryu1_power: .word 3, spr_ryu1_power0, spr_ryu1_power1, spr_ryu1_power2
			#ryu1_projectile
				spr_ryu1_projectile0: .asciiz "../img/bin/sprites/ryu/projectile_1.bin"
			spr_ryu1_projectile: .word 1, spr_ryu1_projectile0
			#ryu1_skick
				spr_ryu1_skick0: .asciiz "../img/bin/sprites/ryu/skick_1.bin"
			spr_ryu1_skick: .word 1, spr_ryu1_skick0
			#ryu1_spunch
				spr_ryu1_spunch0: .asciiz "../img/bin/sprites/ryu/spunch_1.bin"
			spr_ryu1_spunch: .word 1, spr_ryu1_spunch0
			#ryu1_victory
				spr_ryu1_victory0: .asciiz "../img/bin/sprites/ryu/victory_1.bin"
			spr_ryu1_victory: .word 1, spr_ryu1_victory0
			#ryu1_walking
				spr_ryu1_walking0: .asciiz "../img/bin/sprites/ryu/walking0_1.bin"
				spr_ryu1_walking1: .asciiz "../img/bin/sprites/ryu/walking1_1.bin"
				spr_ryu1_walking2: .asciiz "../img/bin/sprites/ryu/walking2_1.bin"
				spr_ryu1_walking3: .asciiz "../img/bin/sprites/ryu/walking3_1.bin"
			spr_ryu1_walking: .word 4, spr_ryu1_walking0, spr_ryu1_walking1, spr_ryu1_walking2, spr_ryu1_walking3
		sprites_ryu1: .word spr_ryu1_block, spr_ryu1_hit, spr_ryu1_idle, spr_ryu1_jkick, spr_ryu1_jpunch, spr_ryu1_jump, spr_ryu1_ko, spr_ryu1_power, spr_ryu1_projectile, spr_ryu1_skick, spr_ryu1_spunch, spr_ryu1_victory, spr_ryu1_walking
		#ryu2:
			#ryu2_block
				spr_ryu2_block0: .asciiz "../img/bin/sprites/ryu/block_2.bin"
			spr_ryu2_block: .word 1, spr_ryu2_block0
			#ryu2_hit
				spr_ryu2_hit0: .asciiz "../img/bin/sprites/ryu/hit_2.bin"
			spr_ryu2_hit: .word 1, spr_ryu2_hit0
			#ryu2_idle
				spr_ryu2_idle0: .asciiz "../img/bin/sprites/ryu/idle0_2.bin"
				spr_ryu2_idle1: .asciiz "../img/bin/sprites/ryu/idle1_2.bin"
			spr_ryu2_idle: .word 2, spr_ryu2_idle0, spr_ryu2_idle1
			#ryu2_jkick
				spr_ryu2_jkick0: .asciiz "../img/bin/sprites/ryu/jkick_2.bin"
			spr_ryu2_jkick: .word 1, spr_ryu2_jkick0
			#ryu2_jpunch
				spr_ryu2_jpunch0: .asciiz "../img/bin/sprites/ryu/jpunch_2.bin"
			spr_ryu2_jpunch: .word 1, spr_ryu2_jpunch0
			#ryu2_jump
				spr_ryu2_jump0: .asciiz "../img/bin/sprites/ryu/jump0_2.bin"
				spr_ryu2_jump1: .asciiz "../img/bin/sprites/ryu/jump1_2.bin"
			spr_ryu2_jump: .word 2, spr_ryu2_jump0, spr_ryu2_jump1
			#ryu2_ko
				spr_ryu2_ko0: .asciiz "../img/bin/sprites/ryu/ko_2.bin"
			spr_ryu2_ko: .word 1, spr_ryu2_ko0
			#ryu2_power
				spr_ryu2_power0: .asciiz "../img/bin/sprites/ryu/power0_2.bin"
				spr_ryu2_power1: .asciiz "../img/bin/sprites/ryu/power1_2.bin"
				spr_ryu2_power2: .asciiz "../img/bin/sprites/ryu/power2_2.bin"
			spr_ryu2_power: .word 3, spr_ryu2_power0, spr_ryu2_power1, spr_ryu2_power2
			#ryu2_projectile
				spr_ryu2_projectile0: .asciiz "../img/bin/sprites/ryu/projectile_2.bin"
			spr_ryu2_projectile: .word 1, spr_ryu2_projectile0
			#ryu2_skick
				spr_ryu2_skick0: .asciiz "../img/bin/sprites/ryu/skick_2.bin"
			spr_ryu2_skick: .word 1, spr_ryu2_skick0
			#ryu2_spunch
				spr_ryu2_spunch0: .asciiz "../img/bin/sprites/ryu/spunch_2.bin"
			spr_ryu2_spunch: .word 1, spr_ryu2_spunch0
			#ryu2_victory
				spr_ryu2_victory0: .asciiz "../img/bin/sprites/ryu/victory_2.bin"
			spr_ryu2_victory: .word 1, spr_ryu2_victory0
			#ryu2_walking
				spr_ryu2_walking0: .asciiz "../img/bin/sprites/ryu/walking0_2.bin"
				spr_ryu2_walking1: .asciiz "../img/bin/sprites/ryu/walking1_2.bin"
				spr_ryu2_walking2: .asciiz "../img/bin/sprites/ryu/walking2_2.bin"
				spr_ryu2_walking3: .asciiz "../img/bin/sprites/ryu/walking3_2.bin"
			spr_ryu2_walking: .word 4, spr_ryu2_walking0, spr_ryu2_walking1, spr_ryu2_walking2, spr_ryu2_walking3
		sprites_ryu2: .word spr_ryu2_block, spr_ryu2_hit, spr_ryu2_idle, spr_ryu2_jkick, spr_ryu2_jpunch, spr_ryu2_jump, spr_ryu2_ko, spr_ryu2_power, spr_ryu2_projectile, spr_ryu2_skick, spr_ryu2_spunch, spr_ryu2_victory, spr_ryu2_walking
		#honda1:
			#honda1_block
				spr_honda1_block0: .asciiz "../img/bin/sprites/honda/block_1.bin"
			spr_honda1_block: .word 1, spr_honda1_block0
			#honda1_hit
				spr_honda1_hit0: .asciiz "../img/bin/sprites/honda/hit_1.bin"
			spr_honda1_hit: .word 1, spr_honda1_hit0
			#honda1_idle
				spr_honda1_idle0: .asciiz "../img/bin/sprites/honda/idle0_1.bin"
				spr_honda1_idle1: .asciiz "../img/bin/sprites/honda/idle1_1.bin"
			spr_honda1_idle: .word 2, spr_honda1_idle0, spr_honda1_idle1
			#honda1_jkick
				spr_honda1_jkick0: .asciiz "../img/bin/sprites/honda/jkick_1.bin"
			spr_honda1_jkick: .word 1, spr_honda1_jkick0
			#honda1_jpunch
				spr_honda1_jpunch0: .asciiz "../img/bin/sprites/honda/jpunch_1.bin"
			spr_honda1_jpunch: .word 1, spr_honda1_jpunch0
			#honda1_jump
				spr_honda1_jump0: .asciiz "../img/bin/sprites/honda/jump0_1.bin"
				spr_honda1_jump1: .asciiz "../img/bin/sprites/honda/jump1_1.bin"
			spr_honda1_jump: .word 2, spr_honda1_jump0, spr_honda1_jump1
			#honda1_ko
				spr_honda1_ko0: .asciiz "../img/bin/sprites/honda/ko_1.bin"
			spr_honda1_ko: .word 1, spr_honda1_ko0
			#honda1_power
				spr_honda1_power0: .asciiz "../img/bin/sprites/honda/power0_1.bin"
				spr_honda1_power1: .asciiz "../img/bin/sprites/honda/power1_1.bin"
				spr_honda1_power2: .asciiz "../img/bin/sprites/honda/power2_1.bin"
			spr_honda1_power: .word 3, spr_honda1_power0, spr_honda1_power1, spr_honda1_power2
			#honda1_projectile
				spr_honda1_projectile0: .asciiz "../img/bin/sprites/honda/projectile_1.bin"
			spr_honda1_projectile: .word 1, spr_honda1_projectile0
			#honda1_skick
				spr_honda1_skick0: .asciiz "../img/bin/sprites/honda/skick_1.bin"
			spr_honda1_skick: .word 1, spr_honda1_skick0
			#honda1_spunch
				spr_honda1_spunch0: .asciiz "../img/bin/sprites/honda/spunch_1.bin"
			spr_honda1_spunch: .word 1, spr_honda1_spunch0
			#honda1_victory
				spr_honda1_victory0: .asciiz "../img/bin/sprites/honda/victory_1.bin"
			spr_honda1_victory: .word 1, spr_honda1_victory0
			#honda1_walking
				spr_honda1_walking0: .asciiz "../img/bin/sprites/honda/walking0_1.bin"
				spr_honda1_walking1: .asciiz "../img/bin/sprites/honda/walking1_1.bin"
			spr_honda1_walking: .word 2, spr_honda1_walking0, spr_honda1_walking1
		sprites_honda1: .word spr_honda1_block, spr_honda1_hit, spr_honda1_idle, spr_honda1_jkick, spr_honda1_jpunch, spr_honda1_jump, spr_honda1_ko, spr_honda1_power, spr_honda1_projectile, spr_honda1_skick, spr_honda1_spunch, spr_honda1_victory, spr_honda1_walking
		#honda2:
			#honda2_block
				spr_honda2_block0: .asciiz "../img/bin/sprites/honda/block_2.bin"
			spr_honda2_block: .word 1, spr_honda2_block0
			#honda2_hit
				spr_honda2_hit0: .asciiz "../img/bin/sprites/honda/hit_2.bin"
			spr_honda2_hit: .word 1, spr_honda2_hit0
			#honda2_idle
				spr_honda2_idle0: .asciiz "../img/bin/sprites/honda/idle0_2.bin"
				spr_honda2_idle1: .asciiz "../img/bin/sprites/honda/idle1_2.bin"
			spr_honda2_idle: .word 2, spr_honda2_idle0, spr_honda2_idle1
			#honda2_jkick
				spr_honda2_jkick0: .asciiz "../img/bin/sprites/honda/jkick_2.bin"
			spr_honda2_jkick: .word 1, spr_honda2_jkick0
			#honda2_jpunch
				spr_honda2_jpunch0: .asciiz "../img/bin/sprites/honda/jpunch_2.bin"
			spr_honda2_jpunch: .word 1, spr_honda2_jpunch0
			#honda2_jump
				spr_honda2_jump0: .asciiz "../img/bin/sprites/honda/jump0_2.bin"
				spr_honda2_jump1: .asciiz "../img/bin/sprites/honda/jump1_2.bin"
			spr_honda2_jump: .word 2, spr_honda2_jump0, spr_honda2_jump1
			#honda2_ko
				spr_honda2_ko0: .asciiz "../img/bin/sprites/honda/ko_2.bin"
			spr_honda2_ko: .word 1, spr_honda2_ko0
			#honda2_power
				spr_honda2_power0: .asciiz "../img/bin/sprites/honda/power0_2.bin"
				spr_honda2_power1: .asciiz "../img/bin/sprites/honda/power1_2.bin"
				spr_honda2_power2: .asciiz "../img/bin/sprites/honda/power2_2.bin"
			spr_honda2_power: .word 3, spr_honda2_power0, spr_honda2_power1, spr_honda2_power2
			#honda2_projectile
				spr_honda2_projectile0: .asciiz "../img/bin/sprites/honda/projectile_2.bin"
			spr_honda2_projectile: .word 1, spr_honda2_projectile0
			#honda2_skick
				spr_honda2_skick0: .asciiz "../img/bin/sprites/honda/skick_2.bin"
			spr_honda2_skick: .word 1, spr_honda2_skick0
			#honda2_spunch
				spr_honda2_spunch0: .asciiz "../img/bin/sprites/honda/spunch_2.bin"
			spr_honda2_spunch: .word 1, spr_honda2_spunch0
			#honda2_victory
				spr_honda2_victory0: .asciiz "../img/bin/sprites/honda/victory_2.bin"
			spr_honda2_victory: .word 1, spr_honda2_victory0
			#honda2_walking
				spr_honda2_walking0: .asciiz "../img/bin/sprites/honda/walking0_2.bin"
				spr_honda2_walking1: .asciiz "../img/bin/sprites/honda/walking1_2.bin"
			spr_honda2_walking: .word 2, spr_honda2_walking0, spr_honda2_walking1
		sprites_honda2: .word spr_honda2_block, spr_honda2_hit, spr_honda2_idle, spr_honda2_jkick, spr_honda2_jpunch, spr_honda2_jump, spr_honda2_ko, spr_honda2_power, spr_honda2_projectile, spr_honda2_skick, spr_honda2_spunch, spr_honda2_victory, spr_honda2_walking
		#blanka1:
			#blanka1_block
				spr_blanka1_block0: .asciiz "../img/bin/sprites/blanka/block_1.bin"
			spr_blanka1_block: .word 1, spr_blanka1_block0
			#blanka1_hit
				spr_blanka1_hit0: .asciiz "../img/bin/sprites/blanka/hit_1.bin"
			spr_blanka1_hit: .word 1, spr_blanka1_hit0
			#blanka1_idle
				spr_blanka1_idle0: .asciiz "../img/bin/sprites/blanka/idle0_1.bin"
				spr_blanka1_idle1: .asciiz "../img/bin/sprites/blanka/idle1_1.bin"
			spr_blanka1_idle: .word 2, spr_blanka1_idle0, spr_blanka1_idle1
			#blanka1_jkick
				spr_blanka1_jkick0: .asciiz "../img/bin/sprites/blanka/jkick_1.bin"
			spr_blanka1_jkick: .word 1, spr_blanka1_jkick0
			#blanka1_jpunch
				spr_blanka1_jpunch0: .asciiz "../img/bin/sprites/blanka/jpunch_1.bin"
			spr_blanka1_jpunch: .word 1, spr_blanka1_jpunch0
			#blanka1_jump
				spr_blanka1_jump0: .asciiz "../img/bin/sprites/blanka/jump0_1.bin"
				spr_blanka1_jump1: .asciiz "../img/bin/sprites/blanka/jump1_1.bin"
			spr_blanka1_jump: .word 2, spr_blanka1_jump0, spr_blanka1_jump1
			#blanka1_ko
				spr_blanka1_ko0: .asciiz "../img/bin/sprites/blanka/ko_1.bin"
			spr_blanka1_ko: .word 1, spr_blanka1_ko0
			#blanka1_power
				spr_blanka1_power0: .asciiz "../img/bin/sprites/blanka/power0_1.bin"
				spr_blanka1_power1: .asciiz "../img/bin/sprites/blanka/power1_1.bin"
				spr_blanka1_power2: .asciiz "../img/bin/sprites/blanka/power2_1.bin"
			spr_blanka1_power: .word 3, spr_blanka1_power0, spr_blanka1_power1, spr_blanka1_power2
			#blanka1_projectile
				spr_blanka1_projectile0: .asciiz "../img/bin/sprites/blanka/projectile_1.bin"
			spr_blanka1_projectile: .word 1, spr_blanka1_projectile0
			#blanka1_skick
				spr_blanka1_skick0: .asciiz "../img/bin/sprites/blanka/skick_1.bin"
			spr_blanka1_skick: .word 1, spr_blanka1_skick0
			#blanka1_spunch
				spr_blanka1_spunch0: .asciiz "../img/bin/sprites/blanka/spunch_1.bin"
			spr_blanka1_spunch: .word 1, spr_blanka1_spunch0
			#blanka1_victory
				spr_blanka1_victory0: .asciiz "../img/bin/sprites/blanka/victory_1.bin"
			spr_blanka1_victory: .word 1, spr_blanka1_victory0
			#blanka1_walking
				spr_blanka1_walking0: .asciiz "../img/bin/sprites/blanka/walking0_1.bin"
				spr_blanka1_walking1: .asciiz "../img/bin/sprites/blanka/walking1_1.bin"
				spr_blanka1_walking2: .asciiz "../img/bin/sprites/blanka/walking2_1.bin"
			spr_blanka1_walking: .word 3, spr_blanka1_walking0, spr_blanka1_walking1, spr_blanka1_walking2
		sprites_blanka1: .word spr_blanka1_block, spr_blanka1_hit, spr_blanka1_idle, spr_blanka1_jkick, spr_blanka1_jpunch, spr_blanka1_jump, spr_blanka1_ko, spr_blanka1_power, spr_blanka1_projectile, spr_blanka1_skick, spr_blanka1_spunch, spr_blanka1_victory, spr_blanka1_walking
		#blanka2:
			#blanka2_block
				spr_blanka2_block0: .asciiz "../img/bin/sprites/blanka/block_2.bin"
			spr_blanka2_block: .word 1, spr_blanka2_block0
			#blanka2_hit
				spr_blanka2_hit0: .asciiz "../img/bin/sprites/blanka/hit_2.bin"
			spr_blanka2_hit: .word 1, spr_blanka2_hit0
			#blanka2_idle
				spr_blanka2_idle0: .asciiz "../img/bin/sprites/blanka/idle0_2.bin"
				spr_blanka2_idle1: .asciiz "../img/bin/sprites/blanka/idle1_2.bin"
			spr_blanka2_idle: .word 2, spr_blanka2_idle0, spr_blanka2_idle1
			#blanka2_jkick
				spr_blanka2_jkick0: .asciiz "../img/bin/sprites/blanka/jkick_2.bin"
			spr_blanka2_jkick: .word 1, spr_blanka2_jkick0
			#blanka2_jpunch
				spr_blanka2_jpunch0: .asciiz "../img/bin/sprites/blanka/jpunch_2.bin"
			spr_blanka2_jpunch: .word 1, spr_blanka2_jpunch0
			#blanka2_jump
				spr_blanka2_jump0: .asciiz "../img/bin/sprites/blanka/jump0_2.bin"
				spr_blanka2_jump1: .asciiz "../img/bin/sprites/blanka/jump1_2.bin"
			spr_blanka2_jump: .word 2, spr_blanka2_jump0, spr_blanka2_jump1
			#blanka2_ko
				spr_blanka2_ko0: .asciiz "../img/bin/sprites/blanka/ko_2.bin"
			spr_blanka2_ko: .word 1, spr_blanka2_ko0
			#blanka2_power
				spr_blanka2_power0: .asciiz "../img/bin/sprites/blanka/power0_2.bin"
				spr_blanka2_power1: .asciiz "../img/bin/sprites/blanka/power1_2.bin"
				spr_blanka2_power2: .asciiz "../img/bin/sprites/blanka/power2_2.bin"
			spr_blanka2_power: .word 3, spr_blanka2_power0, spr_blanka2_power1, spr_blanka2_power2
			#blanka2_projectile
				spr_blanka2_projectile0: .asciiz "../img/bin/sprites/blanka/projectile_2.bin"
			spr_blanka2_projectile: .word 1, spr_blanka2_projectile0
			#blanka2_skick
				spr_blanka2_skick0: .asciiz "../img/bin/sprites/blanka/skick_2.bin"
			spr_blanka2_skick: .word 1, spr_blanka2_skick0
			#blanka2_spunch
				spr_blanka2_spunch0: .asciiz "../img/bin/sprites/blanka/spunch_2.bin"
			spr_blanka2_spunch: .word 1, spr_blanka2_spunch0
			#blanka2_victory
				spr_blanka2_victory0: .asciiz "../img/bin/sprites/blanka/victory_2.bin"
			spr_blanka2_victory: .word 1, spr_blanka2_victory0
			#blanka2_walking
				spr_blanka2_walking0: .asciiz "../img/bin/sprites/blanka/walking0_2.bin"
				spr_blanka2_walking1: .asciiz "../img/bin/sprites/blanka/walking1_2.bin"
				spr_blanka2_walking2: .asciiz "../img/bin/sprites/blanka/walking2_2.bin"
			spr_blanka2_walking: .word 3, spr_blanka2_walking0, spr_blanka2_walking1, spr_blanka2_walking2
		sprites_blanka2: .word spr_blanka2_block, spr_blanka2_hit, spr_blanka2_idle, spr_blanka2_jkick, spr_blanka2_jpunch, spr_blanka2_jump, spr_blanka2_ko, spr_blanka2_power, spr_blanka2_projectile, spr_blanka2_skick, spr_blanka2_spunch, spr_blanka2_victory, spr_blanka2_walking
		#guile1:
			#guile1_block
				spr_guile1_block0: .asciiz "../img/bin/sprites/guile/block_1.bin"
			spr_guile1_block: .word 1, spr_guile1_block0
			#guile1_hit
				spr_guile1_hit0: .asciiz "../img/bin/sprites/guile/hit_1.bin"
			spr_guile1_hit: .word 1, spr_guile1_hit0
			#guile1_idle
				spr_guile1_idle0: .asciiz "../img/bin/sprites/guile/idle0_1.bin"
				spr_guile1_idle1: .asciiz "../img/bin/sprites/guile/idle1_1.bin"
			spr_guile1_idle: .word 2, spr_guile1_idle0, spr_guile1_idle1
			#guile1_jkick
				spr_guile1_jkick0: .asciiz "../img/bin/sprites/guile/jkick_1.bin"
			spr_guile1_jkick: .word 1, spr_guile1_jkick0
			#guile1_jpunch
				spr_guile1_jpunch0: .asciiz "../img/bin/sprites/guile/jpunch_1.bin"
			spr_guile1_jpunch: .word 1, spr_guile1_jpunch0
			#guile1_jump
				spr_guile1_jump0: .asciiz "../img/bin/sprites/guile/jump0_1.bin"
				spr_guile1_jump1: .asciiz "../img/bin/sprites/guile/jump1_1.bin"
			spr_guile1_jump: .word 2, spr_guile1_jump0, spr_guile1_jump1
			#guile1_ko
				spr_guile1_ko0: .asciiz "../img/bin/sprites/guile/ko_1.bin"
			spr_guile1_ko: .word 1, spr_guile1_ko0
			#guile1_power
				spr_guile1_power0: .asciiz "../img/bin/sprites/guile/power0_1.bin"
				spr_guile1_power1: .asciiz "../img/bin/sprites/guile/power1_1.bin"
				spr_guile1_power2: .asciiz "../img/bin/sprites/guile/power2_1.bin"
				spr_guile1_power3: .asciiz "../img/bin/sprites/guile/power3_1.bin"
			spr_guile1_power: .word 4, spr_guile1_power0, spr_guile1_power1, spr_guile1_power2, spr_guile1_power3
			#guile1_projectile
				spr_guile1_projectile0: .asciiz "../img/bin/sprites/guile/projectile_1.bin"
			spr_guile1_projectile: .word 1, spr_guile1_projectile0
			#guile1_skick
				spr_guile1_skick0: .asciiz "../img/bin/sprites/guile/skick_1.bin"
			spr_guile1_skick: .word 1, spr_guile1_skick0
			#guile1_spunch
				spr_guile1_spunch0: .asciiz "../img/bin/sprites/guile/spunch_1.bin"
			spr_guile1_spunch: .word 1, spr_guile1_spunch0
			#guile1_victory
				spr_guile1_victory0: .asciiz "../img/bin/sprites/guile/victory_1.bin"
			spr_guile1_victory: .word 1, spr_guile1_victory0
			#guile1_walking
				spr_guile1_walking0: .asciiz "../img/bin/sprites/guile/walking0_1.bin"
				spr_guile1_walking1: .asciiz "../img/bin/sprites/guile/walking1_1.bin"
				spr_guile1_walking2: .asciiz "../img/bin/sprites/guile/walking2_1.bin"
				spr_guile1_walking3: .asciiz "../img/bin/sprites/guile/walking3_1.bin"
			spr_guile1_walking: .word 4, spr_guile1_walking0, spr_guile1_walking1, spr_guile1_walking2, spr_guile1_walking3
		sprites_guile1: .word spr_guile1_block, spr_guile1_hit, spr_guile1_idle, spr_guile1_jkick, spr_guile1_jpunch, spr_guile1_jump, spr_guile1_ko, spr_guile1_power, spr_guile1_projectile, spr_guile1_skick, spr_guile1_spunch, spr_guile1_victory, spr_guile1_walking
		#guile2:
			#guile2_block
				spr_guile2_block0: .asciiz "../img/bin/sprites/guile/block_2.bin"
			spr_guile2_block: .word 1, spr_guile2_block0
			#guile2_hit
				spr_guile2_hit0: .asciiz "../img/bin/sprites/guile/hit_2.bin"
			spr_guile2_hit: .word 1, spr_guile2_hit0
			#guile2_idle
				spr_guile2_idle0: .asciiz "../img/bin/sprites/guile/idle0_2.bin"
				spr_guile2_idle1: .asciiz "../img/bin/sprites/guile/idle1_2.bin"
			spr_guile2_idle: .word 2, spr_guile2_idle0, spr_guile2_idle1
			#guile2_jkick
				spr_guile2_jkick0: .asciiz "../img/bin/sprites/guile/jkick_2.bin"
			spr_guile2_jkick: .word 1, spr_guile2_jkick0
			#guile2_jpunch
				spr_guile2_jpunch0: .asciiz "../img/bin/sprites/guile/jpunch_2.bin"
			spr_guile2_jpunch: .word 1, spr_guile2_jpunch0
			#guile2_jump
				spr_guile2_jump0: .asciiz "../img/bin/sprites/guile/jump0_2.bin"
				spr_guile2_jump1: .asciiz "../img/bin/sprites/guile/jump1_2.bin"
			spr_guile2_jump: .word 2, spr_guile2_jump0, spr_guile2_jump1
			#guile2_ko
				spr_guile2_ko0: .asciiz "../img/bin/sprites/guile/ko_2.bin"
			spr_guile2_ko: .word 1, spr_guile2_ko0
			#guile2_power
				spr_guile2_power0: .asciiz "../img/bin/sprites/guile/power0_2.bin"
				spr_guile2_power1: .asciiz "../img/bin/sprites/guile/power1_2.bin"
				spr_guile2_power2: .asciiz "../img/bin/sprites/guile/power2_2.bin"
				spr_guile2_power3: .asciiz "../img/bin/sprites/guile/power3_2.bin"
			spr_guile2_power: .word 4, spr_guile2_power0, spr_guile2_power1, spr_guile2_power2, spr_guile2_power3
			#guile2_projectile
				spr_guile2_projectile0: .asciiz "../img/bin/sprites/guile/projectile_2.bin"
			spr_guile2_projectile: .word 1, spr_guile2_projectile0
			#guile2_skick
				spr_guile2_skick0: .asciiz "../img/bin/sprites/guile/skick_2.bin"
			spr_guile2_skick: .word 1, spr_guile2_skick0
			#guile2_spunch
				spr_guile2_spunch0: .asciiz "../img/bin/sprites/guile/spunch_2.bin"
			spr_guile2_spunch: .word 1, spr_guile2_spunch0
			#guile2_victory
				spr_guile2_victory0: .asciiz "../img/bin/sprites/guile/victory_2.bin"
			spr_guile2_victory: .word 1, spr_guile2_victory0
			#guile2_walking
				spr_guile2_walking0: .asciiz "../img/bin/sprites/guile/walking0_2.bin"
				spr_guile2_walking1: .asciiz "../img/bin/sprites/guile/walking1_2.bin"
				spr_guile2_walking2: .asciiz "../img/bin/sprites/guile/walking2_2.bin"
				spr_guile2_walking3: .asciiz "../img/bin/sprites/guile/walking3_2.bin"
			spr_guile2_walking: .word 4, spr_guile2_walking0, spr_guile2_walking1, spr_guile2_walking2, spr_guile2_walking3
		sprites_guile2: .word spr_guile2_block, spr_guile2_hit, spr_guile2_idle, spr_guile2_jkick, spr_guile2_jpunch, spr_guile2_jump, spr_guile2_ko, spr_guile2_power, spr_guile2_projectile, spr_guile2_skick, spr_guile2_spunch, spr_guile2_victory, spr_guile2_walking
		#ken1:
			#ken1_block
				spr_ken1_block0: .asciiz "../img/bin/sprites/ken/block_1.bin"
			spr_ken1_block: .word 1, spr_ken1_block0
			#ken1_hit
				spr_ken1_hit0: .asciiz "../img/bin/sprites/ken/hit_1.bin"
			spr_ken1_hit: .word 1, spr_ken1_hit0
			#ken1_idle
				spr_ken1_idle0: .asciiz "../img/bin/sprites/ken/idle0_1.bin"
				spr_ken1_idle1: .asciiz "../img/bin/sprites/ken/idle1_1.bin"
			spr_ken1_idle: .word 2, spr_ken1_idle0, spr_ken1_idle1
			#ken1_jkick
				spr_ken1_jkick0: .asciiz "../img/bin/sprites/ken/jkick_1.bin"
			spr_ken1_jkick: .word 1, spr_ken1_jkick0
			#ken1_jpunch
				spr_ken1_jpunch0: .asciiz "../img/bin/sprites/ken/jpunch_1.bin"
			spr_ken1_jpunch: .word 1, spr_ken1_jpunch0
			#ken1_jump
				spr_ken1_jump0: .asciiz "../img/bin/sprites/ken/jump0_1.bin"
				spr_ken1_jump1: .asciiz "../img/bin/sprites/ken/jump1_1.bin"
			spr_ken1_jump: .word 2, spr_ken1_jump0, spr_ken1_jump1
			#ken1_ko
				spr_ken1_ko0: .asciiz "../img/bin/sprites/ken/ko_1.bin"
			spr_ken1_ko: .word 1, spr_ken1_ko0
			#ken1_power
				spr_ken1_power0: .asciiz "../img/bin/sprites/ken/power0_1.bin"
				spr_ken1_power1: .asciiz "../img/bin/sprites/ken/power1_1.bin"
				spr_ken1_power2: .asciiz "../img/bin/sprites/ken/power2_1.bin"
			spr_ken1_power: .word 3, spr_ken1_power0, spr_ken1_power1, spr_ken1_power2
			#ken1_projectile
				spr_ken1_projectile0: .asciiz "../img/bin/sprites/ken/projectile_1.bin"
			spr_ken1_projectile: .word 1, spr_ken1_projectile0
			#ken1_skick
				spr_ken1_skick0: .asciiz "../img/bin/sprites/ken/skick_1.bin"
			spr_ken1_skick: .word 1, spr_ken1_skick0
			#ken1_spunch
				spr_ken1_spunch0: .asciiz "../img/bin/sprites/ken/spunch_1.bin"
			spr_ken1_spunch: .word 1, spr_ken1_spunch0
			#ken1_victory
				spr_ken1_victory0: .asciiz "../img/bin/sprites/ken/victory_1.bin"
			spr_ken1_victory: .word 1, spr_ken1_victory0
			#ken1_walking
				spr_ken1_walking0: .asciiz "../img/bin/sprites/ken/walking0_1.bin"
				spr_ken1_walking1: .asciiz "../img/bin/sprites/ken/walking1_1.bin"
				spr_ken1_walking2: .asciiz "../img/bin/sprites/ken/walking2_1.bin"
				spr_ken1_walking3: .asciiz "../img/bin/sprites/ken/walking3_1.bin"
			spr_ken1_walking: .word 4, spr_ken1_walking0, spr_ken1_walking1, spr_ken1_walking2, spr_ken1_walking3
		sprites_ken1: .word spr_ken1_block, spr_ken1_hit, spr_ken1_idle, spr_ken1_jkick, spr_ken1_jpunch, spr_ken1_jump, spr_ken1_ko, spr_ken1_power, spr_ken1_projectile, spr_ken1_skick, spr_ken1_spunch, spr_ken1_victory, spr_ken1_walking
		#ken2:
			#ken2_block
				spr_ken2_block0: .asciiz "../img/bin/sprites/ken/block_2.bin"
			spr_ken2_block: .word 1, spr_ken2_block0
			#ken2_hit
				spr_ken2_hit0: .asciiz "../img/bin/sprites/ken/hit_2.bin"
			spr_ken2_hit: .word 1, spr_ken2_hit0
			#ken2_idle
				spr_ken2_idle0: .asciiz "../img/bin/sprites/ken/idle0_2.bin"
				spr_ken2_idle1: .asciiz "../img/bin/sprites/ken/idle1_2.bin"
			spr_ken2_idle: .word 2, spr_ken2_idle0, spr_ken2_idle1
			#ken2_jkick
				spr_ken2_jkick0: .asciiz "../img/bin/sprites/ken/jkick_2.bin"
			spr_ken2_jkick: .word 1, spr_ken2_jkick0
			#ken2_jpunch
				spr_ken2_jpunch0: .asciiz "../img/bin/sprites/ken/jpunch_2.bin"
			spr_ken2_jpunch: .word 1, spr_ken2_jpunch0
			#ken2_jump
				spr_ken2_jump0: .asciiz "../img/bin/sprites/ken/jump0_2.bin"
				spr_ken2_jump1: .asciiz "../img/bin/sprites/ken/jump1_2.bin"
			spr_ken2_jump: .word 2, spr_ken2_jump0, spr_ken2_jump1
			#ken2_ko
				spr_ken2_ko0: .asciiz "../img/bin/sprites/ken/ko_2.bin"
			spr_ken2_ko: .word 1, spr_ken2_ko0
			#ken2_power
				spr_ken2_power0: .asciiz "../img/bin/sprites/ken/power0_2.bin"
				spr_ken2_power1: .asciiz "../img/bin/sprites/ken/power1_2.bin"
				spr_ken2_power2: .asciiz "../img/bin/sprites/ken/power2_2.bin"
			spr_ken2_power: .word 3, spr_ken2_power0, spr_ken2_power1, spr_ken2_power2
			#ken2_projectile
				spr_ken2_projectile0: .asciiz "../img/bin/sprites/ken/projectile_2.bin"
			spr_ken2_projectile: .word 1, spr_ken2_projectile0
			#ken2_skick
				spr_ken2_skick0: .asciiz "../img/bin/sprites/ken/skick_2.bin"
			spr_ken2_skick: .word 1, spr_ken2_skick0
			#ken2_spunch
				spr_ken2_spunch0: .asciiz "../img/bin/sprites/ken/spunch_2.bin"
			spr_ken2_spunch: .word 1, spr_ken2_spunch0
			#ken2_victory
				spr_ken2_victory0: .asciiz "../img/bin/sprites/ken/victory_2.bin"
			spr_ken2_victory: .word 1, spr_ken2_victory0
			#ken2_walking
				spr_ken2_walking0: .asciiz "../img/bin/sprites/ken/walking0_2.bin"
				spr_ken2_walking1: .asciiz "../img/bin/sprites/ken/walking1_2.bin"
				spr_ken2_walking2: .asciiz "../img/bin/sprites/ken/walking2_2.bin"
				spr_ken2_walking3: .asciiz "../img/bin/sprites/ken/walking3_2.bin"
			spr_ken2_walking: .word 4, spr_ken2_walking0, spr_ken2_walking1, spr_ken2_walking2, spr_ken2_walking3
		sprites_ken2: .word spr_ken2_block, spr_ken2_hit, spr_ken2_idle, spr_ken2_jkick, spr_ken2_jpunch, spr_ken2_jump, spr_ken2_ko, spr_ken2_power, spr_ken2_projectile, spr_ken2_skick, spr_ken2_spunch, spr_ken2_victory, spr_ken2_walking
		#chunli1:
			#chunli1_block
				spr_chunli1_block0: .asciiz "../img/bin/sprites/chunli/block_1.bin"
			spr_chunli1_block: .word 1, spr_chunli1_block0
			#chunli1_hit
				spr_chunli1_hit0: .asciiz "../img/bin/sprites/chunli/hit_1.bin"
			spr_chunli1_hit: .word 1, spr_chunli1_hit0
			#chunli1_idle
				spr_chunli1_idle0: .asciiz "../img/bin/sprites/chunli/idle0_1.bin"
				spr_chunli1_idle1: .asciiz "../img/bin/sprites/chunli/idle1_1.bin"
			spr_chunli1_idle: .word 2, spr_chunli1_idle0, spr_chunli1_idle1
			#chunli1_jkick
				spr_chunli1_jkick0: .asciiz "../img/bin/sprites/chunli/jkick_1.bin"
			spr_chunli1_jkick: .word 1, spr_chunli1_jkick0
			#chunli1_jpunch
				spr_chunli1_jpunch0: .asciiz "../img/bin/sprites/chunli/jpunch_1.bin"
			spr_chunli1_jpunch: .word 1, spr_chunli1_jpunch0
			#chunli1_jump
				spr_chunli1_jump0: .asciiz "../img/bin/sprites/chunli/jump0_1.bin"
				spr_chunli1_jump1: .asciiz "../img/bin/sprites/chunli/jump1_1.bin"
			spr_chunli1_jump: .word 2, spr_chunli1_jump0, spr_chunli1_jump1
			#chunli1_ko
				spr_chunli1_ko0: .asciiz "../img/bin/sprites/chunli/ko_1.bin"
			spr_chunli1_ko: .word 1, spr_chunli1_ko0
			#chunli1_power
				spr_chunli1_power0: .asciiz "../img/bin/sprites/chunli/power0_1.bin"
				spr_chunli1_power1: .asciiz "../img/bin/sprites/chunli/power1_1.bin"
				spr_chunli1_power2: .asciiz "../img/bin/sprites/chunli/power2_1.bin"
			spr_chunli1_power: .word 3, spr_chunli1_power0, spr_chunli1_power1, spr_chunli1_power2
			#chunli1_projectile
				spr_chunli1_projectile0: .asciiz "../img/bin/sprites/chunli/projectile_1.bin"
			spr_chunli1_projectile: .word 1, spr_chunli1_projectile0
			#chunli1_skick
				spr_chunli1_skick0: .asciiz "../img/bin/sprites/chunli/skick_1.bin"
			spr_chunli1_skick: .word 1, spr_chunli1_skick0
			#chunli1_spunch
				spr_chunli1_spunch0: .asciiz "../img/bin/sprites/chunli/spunch_1.bin"
			spr_chunli1_spunch: .word 1, spr_chunli1_spunch0
			#chunli1_victory
				spr_chunli1_victory0: .asciiz "../img/bin/sprites/chunli/victory_1.bin"
			spr_chunli1_victory: .word 1, spr_chunli1_victory0
			#chunli1_walking
				spr_chunli1_walking0: .asciiz "../img/bin/sprites/chunli/walking0_1.bin"
				spr_chunli1_walking1: .asciiz "../img/bin/sprites/chunli/walking1_1.bin"
				spr_chunli1_walking2: .asciiz "../img/bin/sprites/chunli/walking2_1.bin"
				spr_chunli1_walking3: .asciiz "../img/bin/sprites/chunli/walking3_1.bin"
			spr_chunli1_walking: .word 4, spr_chunli1_walking0, spr_chunli1_walking1, spr_chunli1_walking2, spr_chunli1_walking3
		sprites_chunli1: .word spr_chunli1_block, spr_chunli1_hit, spr_chunli1_idle, spr_chunli1_jkick, spr_chunli1_jpunch, spr_chunli1_jump, spr_chunli1_ko, spr_chunli1_power, spr_chunli1_projectile, spr_chunli1_skick, spr_chunli1_spunch, spr_chunli1_victory, spr_chunli1_walking
		#chunli2:
			#chunli2_block
				spr_chunli2_block0: .asciiz "../img/bin/sprites/chunli/block_2.bin"
			spr_chunli2_block: .word 1, spr_chunli2_block0
			#chunli2_hit
				spr_chunli2_hit0: .asciiz "../img/bin/sprites/chunli/hit_2.bin"
			spr_chunli2_hit: .word 1, spr_chunli2_hit0
			#chunli2_idle
				spr_chunli2_idle0: .asciiz "../img/bin/sprites/chunli/idle0_2.bin"
				spr_chunli2_idle1: .asciiz "../img/bin/sprites/chunli/idle1_2.bin"
			spr_chunli2_idle: .word 2, spr_chunli2_idle0, spr_chunli2_idle1
			#chunli2_jkick
				spr_chunli2_jkick0: .asciiz "../img/bin/sprites/chunli/jkick_2.bin"
			spr_chunli2_jkick: .word 1, spr_chunli2_jkick0
			#chunli2_jpunch
				spr_chunli2_jpunch0: .asciiz "../img/bin/sprites/chunli/jpunch_2.bin"
			spr_chunli2_jpunch: .word 1, spr_chunli2_jpunch0
			#chunli2_jump
				spr_chunli2_jump0: .asciiz "../img/bin/sprites/chunli/jump0_2.bin"
				spr_chunli2_jump1: .asciiz "../img/bin/sprites/chunli/jump1_2.bin"
			spr_chunli2_jump: .word 2, spr_chunli2_jump0, spr_chunli2_jump1
			#chunli2_ko
				spr_chunli2_ko0: .asciiz "../img/bin/sprites/chunli/ko_2.bin"
			spr_chunli2_ko: .word 1, spr_chunli2_ko0
			#chunli2_power
				spr_chunli2_power0: .asciiz "../img/bin/sprites/chunli/power0_2.bin"
				spr_chunli2_power1: .asciiz "../img/bin/sprites/chunli/power1_2.bin"
				spr_chunli2_power2: .asciiz "../img/bin/sprites/chunli/power2_2.bin"
			spr_chunli2_power: .word 3, spr_chunli2_power0, spr_chunli2_power1, spr_chunli2_power2
			#chunli2_projectile
				spr_chunli2_projectile0: .asciiz "../img/bin/sprites/chunli/projectile_2.bin"
			spr_chunli2_projectile: .word 1, spr_chunli2_projectile0
			#chunli2_skick
				spr_chunli2_skick0: .asciiz "../img/bin/sprites/chunli/skick_2.bin"
			spr_chunli2_skick: .word 1, spr_chunli2_skick0
			#chunli2_spunch
				spr_chunli2_spunch0: .asciiz "../img/bin/sprites/chunli/spunch_2.bin"
			spr_chunli2_spunch: .word 1, spr_chunli2_spunch0
			#chunli2_victory
				spr_chunli2_victory0: .asciiz "../img/bin/sprites/chunli/victory_2.bin"
			spr_chunli2_victory: .word 1, spr_chunli2_victory0
			#chunli2_walking
				spr_chunli2_walking0: .asciiz "../img/bin/sprites/chunli/walking0_2.bin"
				spr_chunli2_walking1: .asciiz "../img/bin/sprites/chunli/walking1_2.bin"
				spr_chunli2_walking2: .asciiz "../img/bin/sprites/chunli/walking2_2.bin"
				spr_chunli2_walking3: .asciiz "../img/bin/sprites/chunli/walking3_2.bin"
			spr_chunli2_walking: .word 4, spr_chunli2_walking0, spr_chunli2_walking1, spr_chunli2_walking2, spr_chunli2_walking3
		sprites_chunli2: .word spr_chunli2_block, spr_chunli2_hit, spr_chunli2_idle, spr_chunli2_jkick, spr_chunli2_jpunch, spr_chunli2_jump, spr_chunli2_ko, spr_chunli2_power, spr_chunli2_projectile, spr_chunli2_skick, spr_chunli2_spunch, spr_chunli2_victory, spr_chunli2_walking
		#zangief1:
			#zangief1_block
				spr_zangief1_block0: .asciiz "../img/bin/sprites/zangief/block_1.bin"
			spr_zangief1_block: .word 1, spr_zangief1_block0
			#zangief1_hit
				spr_zangief1_hit0: .asciiz "../img/bin/sprites/zangief/hit_1.bin"
			spr_zangief1_hit: .word 1, spr_zangief1_hit0
			#zangief1_idle
				spr_zangief1_idle0: .asciiz "../img/bin/sprites/zangief/idle0_1.bin"
				spr_zangief1_idle1: .asciiz "../img/bin/sprites/zangief/idle1_1.bin"
			spr_zangief1_idle: .word 2, spr_zangief1_idle0, spr_zangief1_idle1
			#zangief1_jkick
				spr_zangief1_jkick0: .asciiz "../img/bin/sprites/zangief/jkick_1.bin"
			spr_zangief1_jkick: .word 1, spr_zangief1_jkick0
			#zangief1_jpunch
				spr_zangief1_jpunch0: .asciiz "../img/bin/sprites/zangief/jpunch_1.bin"
			spr_zangief1_jpunch: .word 1, spr_zangief1_jpunch0
			#zangief1_jump
				spr_zangief1_jump0: .asciiz "../img/bin/sprites/zangief/jump0_1.bin"
				spr_zangief1_jump1: .asciiz "../img/bin/sprites/zangief/jump1_1.bin"
			spr_zangief1_jump: .word 2, spr_zangief1_jump0, spr_zangief1_jump1
			#zangief1_ko
				spr_zangief1_ko0: .asciiz "../img/bin/sprites/zangief/ko_1.bin"
			spr_zangief1_ko: .word 1, spr_zangief1_ko0
			#zangief1_power
				spr_zangief1_power0: .asciiz "../img/bin/sprites/zangief/power0_1.bin"
				spr_zangief1_power1: .asciiz "../img/bin/sprites/zangief/power1_1.bin"
				spr_zangief1_power2: .asciiz "../img/bin/sprites/zangief/power2_1.bin"
				spr_zangief1_power3: .asciiz "../img/bin/sprites/zangief/power3_1.bin"
				spr_zangief1_power4: .asciiz "../img/bin/sprites/zangief/power4_1.bin"
			spr_zangief1_power: .word 5, spr_zangief1_power0, spr_zangief1_power1, spr_zangief1_power2, spr_zangief1_power3, spr_zangief1_power4
			#zangief1_projectile
				spr_zangief1_projectile0: .asciiz "../img/bin/sprites/zangief/projectile_1.bin"
			spr_zangief1_projectile: .word 1, spr_zangief1_projectile0
			#zangief1_skick
				spr_zangief1_skick0: .asciiz "../img/bin/sprites/zangief/skick_1.bin"
			spr_zangief1_skick: .word 1, spr_zangief1_skick0
			#zangief1_spunch
				spr_zangief1_spunch0: .asciiz "../img/bin/sprites/zangief/spunch_1.bin"
			spr_zangief1_spunch: .word 1, spr_zangief1_spunch0
			#zangief1_victory
				spr_zangief1_victory0: .asciiz "../img/bin/sprites/zangief/victory_1.bin"
			spr_zangief1_victory: .word 1, spr_zangief1_victory0
			#zangief1_walking
				spr_zangief1_walking0: .asciiz "../img/bin/sprites/zangief/walking0_1.bin"
				spr_zangief1_walking1: .asciiz "../img/bin/sprites/zangief/walking1_1.bin"
				spr_zangief1_walking2: .asciiz "../img/bin/sprites/zangief/walking2_1.bin"
				spr_zangief1_walking3: .asciiz "../img/bin/sprites/zangief/walking3_1.bin"
			spr_zangief1_walking: .word 4, spr_zangief1_walking0, spr_zangief1_walking1, spr_zangief1_walking2, spr_zangief1_walking3
		sprites_zangief1: .word spr_zangief1_block, spr_zangief1_hit, spr_zangief1_idle, spr_zangief1_jkick, spr_zangief1_jpunch, spr_zangief1_jump, spr_zangief1_ko, spr_zangief1_power, spr_zangief1_projectile, spr_zangief1_skick, spr_zangief1_spunch, spr_zangief1_victory, spr_zangief1_walking
		#zangief2:
			#zangief2_block
				spr_zangief2_block0: .asciiz "../img/bin/sprites/zangief/block_2.bin"
			spr_zangief2_block: .word 1, spr_zangief2_block0
			#zangief2_hit
				spr_zangief2_hit0: .asciiz "../img/bin/sprites/zangief/hit_2.bin"
			spr_zangief2_hit: .word 1, spr_zangief2_hit0
			#zangief2_idle
				spr_zangief2_idle0: .asciiz "../img/bin/sprites/zangief/idle0_2.bin"
				spr_zangief2_idle1: .asciiz "../img/bin/sprites/zangief/idle1_2.bin"
			spr_zangief2_idle: .word 2, spr_zangief2_idle0, spr_zangief2_idle1
			#zangief2_jkick
				spr_zangief2_jkick0: .asciiz "../img/bin/sprites/zangief/jkick_2.bin"
			spr_zangief2_jkick: .word 1, spr_zangief2_jkick0
			#zangief2_jpunch
				spr_zangief2_jpunch0: .asciiz "../img/bin/sprites/zangief/jpunch_2.bin"
			spr_zangief2_jpunch: .word 1, spr_zangief2_jpunch0
			#zangief2_jump
				spr_zangief2_jump0: .asciiz "../img/bin/sprites/zangief/jump0_2.bin"
				spr_zangief2_jump1: .asciiz "../img/bin/sprites/zangief/jump1_2.bin"
			spr_zangief2_jump: .word 2, spr_zangief2_jump0, spr_zangief2_jump1
			#zangief2_ko
				spr_zangief2_ko0: .asciiz "../img/bin/sprites/zangief/ko_2.bin"
			spr_zangief2_ko: .word 1, spr_zangief2_ko0
			#zangief2_power
				spr_zangief2_power0: .asciiz "../img/bin/sprites/zangief/power0_2.bin"
				spr_zangief2_power1: .asciiz "../img/bin/sprites/zangief/power1_2.bin"
				spr_zangief2_power2: .asciiz "../img/bin/sprites/zangief/power2_2.bin"
				spr_zangief2_power3: .asciiz "../img/bin/sprites/zangief/power3_2.bin"
				spr_zangief2_power4: .asciiz "../img/bin/sprites/zangief/power4_2.bin"
			spr_zangief2_power: .word 5, spr_zangief2_power0, spr_zangief2_power1, spr_zangief2_power2, spr_zangief2_power3, spr_zangief2_power4
			#zangief2_projectile
				spr_zangief2_projectile0: .asciiz "../img/bin/sprites/zangief/projectile_2.bin"
			spr_zangief2_projectile: .word 1, spr_zangief2_projectile0
			#zangief2_skick
				spr_zangief2_skick0: .asciiz "../img/bin/sprites/zangief/skick_2.bin"
			spr_zangief2_skick: .word 1, spr_zangief2_skick0
			#zangief2_spunch
				spr_zangief2_spunch0: .asciiz "../img/bin/sprites/zangief/spunch_2.bin"
			spr_zangief2_spunch: .word 1, spr_zangief2_spunch0
			#zangief2_victory
				spr_zangief2_victory0: .asciiz "../img/bin/sprites/zangief/victory_2.bin"
			spr_zangief2_victory: .word 1, spr_zangief2_victory0
			#zangief2_walking
				spr_zangief2_walking0: .asciiz "../img/bin/sprites/zangief/walking0_2.bin"
				spr_zangief2_walking1: .asciiz "../img/bin/sprites/zangief/walking1_2.bin"
				spr_zangief2_walking2: .asciiz "../img/bin/sprites/zangief/walking2_2.bin"
				spr_zangief2_walking3: .asciiz "../img/bin/sprites/zangief/walking3_2.bin"
			spr_zangief2_walking: .word 4, spr_zangief2_walking0, spr_zangief2_walking1, spr_zangief2_walking2, spr_zangief2_walking3
		sprites_zangief2: .word spr_zangief2_block, spr_zangief2_hit, spr_zangief2_idle, spr_zangief2_jkick, spr_zangief2_jpunch, spr_zangief2_jump, spr_zangief2_ko, spr_zangief2_power, spr_zangief2_projectile, spr_zangief2_skick, spr_zangief2_spunch, spr_zangief2_victory, spr_zangief2_walking
		#dhalsim1:
			#dhalsim1_block
				spr_dhalsim1_block0: .asciiz "../img/bin/sprites/dhalsim/block_1.bin"
			spr_dhalsim1_block: .word 1, spr_dhalsim1_block0
			#dhalsim1_hit
				spr_dhalsim1_hit0: .asciiz "../img/bin/sprites/dhalsim/hit_1.bin"
			spr_dhalsim1_hit: .word 1, spr_dhalsim1_hit0
			#dhalsim1_idle
				spr_dhalsim1_idle0: .asciiz "../img/bin/sprites/dhalsim/idle0_1.bin"
				spr_dhalsim1_idle1: .asciiz "../img/bin/sprites/dhalsim/idle1_1.bin"
			spr_dhalsim1_idle: .word 2, spr_dhalsim1_idle0, spr_dhalsim1_idle1
			#dhalsim1_jkick
				spr_dhalsim1_jkick0: .asciiz "../img/bin/sprites/dhalsim/jkick_1.bin"
			spr_dhalsim1_jkick: .word 1, spr_dhalsim1_jkick0
			#dhalsim1_jpunch
				spr_dhalsim1_jpunch0: .asciiz "../img/bin/sprites/dhalsim/jpunch_1.bin"
			spr_dhalsim1_jpunch: .word 1, spr_dhalsim1_jpunch0
			#dhalsim1_jump
				spr_dhalsim1_jump0: .asciiz "../img/bin/sprites/dhalsim/jump0_1.bin"
				spr_dhalsim1_jump1: .asciiz "../img/bin/sprites/dhalsim/jump1_1.bin"
			spr_dhalsim1_jump: .word 2, spr_dhalsim1_jump0, spr_dhalsim1_jump1
			#dhalsim1_ko
				spr_dhalsim1_ko0: .asciiz "../img/bin/sprites/dhalsim/ko_1.bin"
			spr_dhalsim1_ko: .word 1, spr_dhalsim1_ko0
			#dhalsim1_power
				spr_dhalsim1_power0: .asciiz "../img/bin/sprites/dhalsim/power0_1.bin"
				spr_dhalsim1_power1: .asciiz "../img/bin/sprites/dhalsim/power1_1.bin"
				spr_dhalsim1_power2: .asciiz "../img/bin/sprites/dhalsim/power2_1.bin"
			spr_dhalsim1_power: .word 3, spr_dhalsim1_power0, spr_dhalsim1_power1, spr_dhalsim1_power2
			#dhalsim1_projectile
				spr_dhalsim1_projectile0: .asciiz "../img/bin/sprites/dhalsim/projectile_1.bin"
			spr_dhalsim1_projectile: .word 1, spr_dhalsim1_projectile0
			#dhalsim1_skick
				spr_dhalsim1_skick0: .asciiz "../img/bin/sprites/dhalsim/skick_1.bin"
			spr_dhalsim1_skick: .word 1, spr_dhalsim1_skick0
			#dhalsim1_spunch
				spr_dhalsim1_spunch0: .asciiz "../img/bin/sprites/dhalsim/spunch_1.bin"
			spr_dhalsim1_spunch: .word 1, spr_dhalsim1_spunch0
			#dhalsim1_victory
				spr_dhalsim1_victory0: .asciiz "../img/bin/sprites/dhalsim/victory_1.bin"
			spr_dhalsim1_victory: .word 1, spr_dhalsim1_victory0
			#dhalsim1_walking
				spr_dhalsim1_walking0: .asciiz "../img/bin/sprites/dhalsim/walking0_1.bin"
				spr_dhalsim1_walking1: .asciiz "../img/bin/sprites/dhalsim/walking1_1.bin"
				spr_dhalsim1_walking2: .asciiz "../img/bin/sprites/dhalsim/walking2_1.bin"
				spr_dhalsim1_walking3: .asciiz "../img/bin/sprites/dhalsim/walking3_1.bin"
			spr_dhalsim1_walking: .word 4, spr_dhalsim1_walking0, spr_dhalsim1_walking1, spr_dhalsim1_walking2, spr_dhalsim1_walking3
		sprites_dhalsim1: .word spr_dhalsim1_block, spr_dhalsim1_hit, spr_dhalsim1_idle, spr_dhalsim1_jkick, spr_dhalsim1_jpunch, spr_dhalsim1_jump, spr_dhalsim1_ko, spr_dhalsim1_power, spr_dhalsim1_projectile, spr_dhalsim1_skick, spr_dhalsim1_spunch, spr_dhalsim1_victory, spr_dhalsim1_walking
		#dhalsim2:
			#dhalsim2_block
				spr_dhalsim2_block0: .asciiz "../img/bin/sprites/dhalsim/block_2.bin"
			spr_dhalsim2_block: .word 1, spr_dhalsim2_block0
			#dhalsim2_hit
				spr_dhalsim2_hit0: .asciiz "../img/bin/sprites/dhalsim/hit_2.bin"
			spr_dhalsim2_hit: .word 1, spr_dhalsim2_hit0
			#dhalsim2_idle
				spr_dhalsim2_idle0: .asciiz "../img/bin/sprites/dhalsim/idle0_2.bin"
				spr_dhalsim2_idle1: .asciiz "../img/bin/sprites/dhalsim/idle1_2.bin"
			spr_dhalsim2_idle: .word 2, spr_dhalsim2_idle0, spr_dhalsim2_idle1
			#dhalsim2_jkick
				spr_dhalsim2_jkick0: .asciiz "../img/bin/sprites/dhalsim/jkick_2.bin"
			spr_dhalsim2_jkick: .word 1, spr_dhalsim2_jkick0
			#dhalsim2_jpunch
				spr_dhalsim2_jpunch0: .asciiz "../img/bin/sprites/dhalsim/jpunch_2.bin"
			spr_dhalsim2_jpunch: .word 1, spr_dhalsim2_jpunch0
			#dhalsim2_jump
				spr_dhalsim2_jump0: .asciiz "../img/bin/sprites/dhalsim/jump0_2.bin"
				spr_dhalsim2_jump1: .asciiz "../img/bin/sprites/dhalsim/jump1_2.bin"
			spr_dhalsim2_jump: .word 2, spr_dhalsim2_jump0, spr_dhalsim2_jump1
			#dhalsim2_ko
				spr_dhalsim2_ko0: .asciiz "../img/bin/sprites/dhalsim/ko_2.bin"
			spr_dhalsim2_ko: .word 1, spr_dhalsim2_ko0
			#dhalsim2_power
				spr_dhalsim2_power0: .asciiz "../img/bin/sprites/dhalsim/power0_2.bin"
				spr_dhalsim2_power1: .asciiz "../img/bin/sprites/dhalsim/power1_2.bin"
				spr_dhalsim2_power2: .asciiz "../img/bin/sprites/dhalsim/power2_2.bin"
			spr_dhalsim2_power: .word 3, spr_dhalsim2_power0, spr_dhalsim2_power1, spr_dhalsim2_power2
			#dhalsim2_projectile
				spr_dhalsim2_projectile0: .asciiz "../img/bin/sprites/dhalsim/projectile_2.bin"
			spr_dhalsim2_projectile: .word 1, spr_dhalsim2_projectile0
			#dhalsim2_skick
				spr_dhalsim2_skick0: .asciiz "../img/bin/sprites/dhalsim/skick_2.bin"
			spr_dhalsim2_skick: .word 1, spr_dhalsim2_skick0
			#dhalsim2_spunch
				spr_dhalsim2_spunch0: .asciiz "../img/bin/sprites/dhalsim/spunch_2.bin"
			spr_dhalsim2_spunch: .word 1, spr_dhalsim2_spunch0
			#dhalsim2_victory
				spr_dhalsim2_victory0: .asciiz "../img/bin/sprites/dhalsim/victory_2.bin"
			spr_dhalsim2_victory: .word 1, spr_dhalsim2_victory0
			#dhalsim2_walking
				spr_dhalsim2_walking0: .asciiz "../img/bin/sprites/dhalsim/walking0_2.bin"
				spr_dhalsim2_walking1: .asciiz "../img/bin/sprites/dhalsim/walking1_2.bin"
				spr_dhalsim2_walking2: .asciiz "../img/bin/sprites/dhalsim/walking2_2.bin"
				spr_dhalsim2_walking3: .asciiz "../img/bin/sprites/dhalsim/walking3_2.bin"
			spr_dhalsim2_walking: .word 4, spr_dhalsim2_walking0, spr_dhalsim2_walking1, spr_dhalsim2_walking2, spr_dhalsim2_walking3
		sprites_dhalsim2: .word spr_dhalsim2_block, spr_dhalsim2_hit, spr_dhalsim2_idle, spr_dhalsim2_jkick, spr_dhalsim2_jpunch, spr_dhalsim2_jump, spr_dhalsim2_ko, spr_dhalsim2_power, spr_dhalsim2_projectile, spr_dhalsim2_skick, spr_dhalsim2_spunch, spr_dhalsim2_victory, spr_dhalsim2_walking
		#balrog1:
			#balrog1_block
				spr_balrog1_block0: .asciiz "../img/bin/sprites/balrog/block_1.bin"
			spr_balrog1_block: .word 1, spr_balrog1_block0
			#balrog1_hit
				spr_balrog1_hit0: .asciiz "../img/bin/sprites/balrog/hit_1.bin"
			spr_balrog1_hit: .word 1, spr_balrog1_hit0
			#balrog1_idle
				spr_balrog1_idle0: .asciiz "../img/bin/sprites/balrog/idle0_1.bin"
				spr_balrog1_idle1: .asciiz "../img/bin/sprites/balrog/idle1_1.bin"
			spr_balrog1_idle: .word 2, spr_balrog1_idle0, spr_balrog1_idle1
			#balrog1_jkick
				spr_balrog1_jkick0: .asciiz "../img/bin/sprites/balrog/jkick_1.bin"
			spr_balrog1_jkick: .word 1, spr_balrog1_jkick0
			#balrog1_jpunch
				spr_balrog1_jpunch0: .asciiz "../img/bin/sprites/balrog/jpunch_1.bin"
			spr_balrog1_jpunch: .word 1, spr_balrog1_jpunch0
			#balrog1_jump
				spr_balrog1_jump0: .asciiz "../img/bin/sprites/balrog/jump0_1.bin"
				spr_balrog1_jump1: .asciiz "../img/bin/sprites/balrog/jump1_1.bin"
			spr_balrog1_jump: .word 2, spr_balrog1_jump0, spr_balrog1_jump1
			#balrog1_ko
				spr_balrog1_ko0: .asciiz "../img/bin/sprites/balrog/ko_1.bin"
			spr_balrog1_ko: .word 1, spr_balrog1_ko0
			#balrog1_power
				spr_balrog1_power0: .asciiz "../img/bin/sprites/balrog/power0_1.bin"
				spr_balrog1_power1: .asciiz "../img/bin/sprites/balrog/power1_1.bin"
				spr_balrog1_power2: .asciiz "../img/bin/sprites/balrog/power2_1.bin"
			spr_balrog1_power: .word 3, spr_balrog1_power0, spr_balrog1_power1, spr_balrog1_power2
			#balrog1_projectile
				spr_balrog1_projectile0: .asciiz "../img/bin/sprites/balrog/projectile_1.bin"
			spr_balrog1_projectile: .word 1, spr_balrog1_projectile0
			#balrog1_skick
				spr_balrog1_skick0: .asciiz "../img/bin/sprites/balrog/skick_1.bin"
			spr_balrog1_skick: .word 1, spr_balrog1_skick0
			#balrog1_spunch
				spr_balrog1_spunch0: .asciiz "../img/bin/sprites/balrog/spunch_1.bin"
			spr_balrog1_spunch: .word 1, spr_balrog1_spunch0
			#balrog1_victory
				spr_balrog1_victory0: .asciiz "../img/bin/sprites/balrog/victory_1.bin"
			spr_balrog1_victory: .word 1, spr_balrog1_victory0
			#balrog1_walking
				spr_balrog1_walking0: .asciiz "../img/bin/sprites/balrog/walking0_1.bin"
				spr_balrog1_walking1: .asciiz "../img/bin/sprites/balrog/walking1_1.bin"
				spr_balrog1_walking2: .asciiz "../img/bin/sprites/balrog/walking2_1.bin"
				spr_balrog1_walking3: .asciiz "../img/bin/sprites/balrog/walking3_1.bin"
			spr_balrog1_walking: .word 4, spr_balrog1_walking0, spr_balrog1_walking1, spr_balrog1_walking2, spr_balrog1_walking3
		sprites_balrog1: .word spr_balrog1_block, spr_balrog1_hit, spr_balrog1_idle, spr_balrog1_jkick, spr_balrog1_jpunch, spr_balrog1_jump, spr_balrog1_ko, spr_balrog1_power, spr_balrog1_projectile, spr_balrog1_skick, spr_balrog1_spunch, spr_balrog1_victory, spr_balrog1_walking
		#balrog2:
			#balrog2_block
				spr_balrog2_block0: .asciiz "../img/bin/sprites/balrog/block_2.bin"
			spr_balrog2_block: .word 1, spr_balrog2_block0
			#balrog2_hit
				spr_balrog2_hit0: .asciiz "../img/bin/sprites/balrog/hit_2.bin"
			spr_balrog2_hit: .word 1, spr_balrog2_hit0
			#balrog2_idle
				spr_balrog2_idle0: .asciiz "../img/bin/sprites/balrog/idle0_2.bin"
				spr_balrog2_idle1: .asciiz "../img/bin/sprites/balrog/idle1_2.bin"
			spr_balrog2_idle: .word 2, spr_balrog2_idle0, spr_balrog2_idle1
			#balrog2_jkick
				spr_balrog2_jkick0: .asciiz "../img/bin/sprites/balrog/jkick_2.bin"
			spr_balrog2_jkick: .word 1, spr_balrog2_jkick0
			#balrog2_jpunch
				spr_balrog2_jpunch0: .asciiz "../img/bin/sprites/balrog/jpunch_2.bin"
			spr_balrog2_jpunch: .word 1, spr_balrog2_jpunch0
			#balrog2_jump
				spr_balrog2_jump0: .asciiz "../img/bin/sprites/balrog/jump0_2.bin"
				spr_balrog2_jump1: .asciiz "../img/bin/sprites/balrog/jump1_2.bin"
			spr_balrog2_jump: .word 2, spr_balrog2_jump0, spr_balrog2_jump1
			#balrog2_ko
				spr_balrog2_ko0: .asciiz "../img/bin/sprites/balrog/ko_2.bin"
			spr_balrog2_ko: .word 1, spr_balrog2_ko0
			#balrog2_power
				spr_balrog2_power0: .asciiz "../img/bin/sprites/balrog/power0_2.bin"
				spr_balrog2_power1: .asciiz "../img/bin/sprites/balrog/power1_2.bin"
				spr_balrog2_power2: .asciiz "../img/bin/sprites/balrog/power2_2.bin"
			spr_balrog2_power: .word 3, spr_balrog2_power0, spr_balrog2_power1, spr_balrog2_power2
			#balrog2_projectile
				spr_balrog2_projectile0: .asciiz "../img/bin/sprites/balrog/projectile_2.bin"
			spr_balrog2_projectile: .word 1, spr_balrog2_projectile0
			#balrog2_skick
				spr_balrog2_skick0: .asciiz "../img/bin/sprites/balrog/skick_2.bin"
			spr_balrog2_skick: .word 1, spr_balrog2_skick0
			#balrog2_spunch
				spr_balrog2_spunch0: .asciiz "../img/bin/sprites/balrog/spunch_2.bin"
			spr_balrog2_spunch: .word 1, spr_balrog2_spunch0
			#balrog2_victory
				spr_balrog2_victory0: .asciiz "../img/bin/sprites/balrog/victory_2.bin"
			spr_balrog2_victory: .word 1, spr_balrog2_victory0
			#balrog2_walking
				spr_balrog2_walking0: .asciiz "../img/bin/sprites/balrog/walking0_2.bin"
				spr_balrog2_walking1: .asciiz "../img/bin/sprites/balrog/walking1_2.bin"
				spr_balrog2_walking2: .asciiz "../img/bin/sprites/balrog/walking2_2.bin"
				spr_balrog2_walking3: .asciiz "../img/bin/sprites/balrog/walking3_2.bin"
			spr_balrog2_walking: .word 4, spr_balrog2_walking0, spr_balrog2_walking1, spr_balrog2_walking2, spr_balrog2_walking3
		sprites_balrog2: .word spr_balrog2_block, spr_balrog2_hit, spr_balrog2_idle, spr_balrog2_jkick, spr_balrog2_jpunch, spr_balrog2_jump, spr_balrog2_ko, spr_balrog2_power, spr_balrog2_projectile, spr_balrog2_skick, spr_balrog2_spunch, spr_balrog2_victory, spr_balrog2_walking
		#vega1:
			#vega1_block
				spr_vega1_block0: .asciiz "../img/bin/sprites/vega/block_1.bin"
			spr_vega1_block: .word 1, spr_vega1_block0
			#vega1_hit
				spr_vega1_hit0: .asciiz "../img/bin/sprites/vega/hit_1.bin"
			spr_vega1_hit: .word 1, spr_vega1_hit0
			#vega1_idle
				spr_vega1_idle0: .asciiz "../img/bin/sprites/vega/idle0_1.bin"
				spr_vega1_idle1: .asciiz "../img/bin/sprites/vega/idle1_1.bin"
			spr_vega1_idle: .word 2, spr_vega1_idle0, spr_vega1_idle1
			#vega1_jkick
				spr_vega1_jkick0: .asciiz "../img/bin/sprites/vega/jkick_1.bin"
			spr_vega1_jkick: .word 1, spr_vega1_jkick0
			#vega1_jpunch
				spr_vega1_jpunch0: .asciiz "../img/bin/sprites/vega/jpunch_1.bin"
			spr_vega1_jpunch: .word 1, spr_vega1_jpunch0
			#vega1_jump
				spr_vega1_jump0: .asciiz "../img/bin/sprites/vega/jump0_1.bin"
				spr_vega1_jump1: .asciiz "../img/bin/sprites/vega/jump1_1.bin"
			spr_vega1_jump: .word 2, spr_vega1_jump0, spr_vega1_jump1
			#vega1_ko
				spr_vega1_ko0: .asciiz "../img/bin/sprites/vega/ko_1.bin"
			spr_vega1_ko: .word 1, spr_vega1_ko0
			#vega1_power
				spr_vega1_power0: .asciiz "../img/bin/sprites/vega/power0_1.bin"
				spr_vega1_power1: .asciiz "../img/bin/sprites/vega/power1_1.bin"
				spr_vega1_power2: .asciiz "../img/bin/sprites/vega/power2_1.bin"
			spr_vega1_power: .word 3, spr_vega1_power0, spr_vega1_power1, spr_vega1_power2
			#vega1_projectile
				spr_vega1_projectile0: .asciiz "../img/bin/sprites/vega/projectile_1.bin"
			spr_vega1_projectile: .word 1, spr_vega1_projectile0
			#vega1_skick
				spr_vega1_skick0: .asciiz "../img/bin/sprites/vega/skick_1.bin"
			spr_vega1_skick: .word 1, spr_vega1_skick0
			#vega1_spunch
				spr_vega1_spunch0: .asciiz "../img/bin/sprites/vega/spunch_1.bin"
			spr_vega1_spunch: .word 1, spr_vega1_spunch0
			#vega1_victory
				spr_vega1_victory0: .asciiz "../img/bin/sprites/vega/victory_1.bin"
			spr_vega1_victory: .word 1, spr_vega1_victory0
			#vega1_walking
				spr_vega1_walking0: .asciiz "../img/bin/sprites/vega/walking0_1.bin"
				spr_vega1_walking1: .asciiz "../img/bin/sprites/vega/walking1_1.bin"
				spr_vega1_walking2: .asciiz "../img/bin/sprites/vega/walking2_1.bin"
			spr_vega1_walking: .word 3, spr_vega1_walking0, spr_vega1_walking1, spr_vega1_walking2
		sprites_vega1: .word spr_vega1_block, spr_vega1_hit, spr_vega1_idle, spr_vega1_jkick, spr_vega1_jpunch, spr_vega1_jump, spr_vega1_ko, spr_vega1_power, spr_vega1_projectile, spr_vega1_skick, spr_vega1_spunch, spr_vega1_victory, spr_vega1_walking
		#vega2:
			#vega2_block
				spr_vega2_block0: .asciiz "../img/bin/sprites/vega/block_2.bin"
			spr_vega2_block: .word 1, spr_vega2_block0
			#vega2_hit
				spr_vega2_hit0: .asciiz "../img/bin/sprites/vega/hit_2.bin"
			spr_vega2_hit: .word 1, spr_vega2_hit0
			#vega2_idle
				spr_vega2_idle0: .asciiz "../img/bin/sprites/vega/idle0_2.bin"
				spr_vega2_idle1: .asciiz "../img/bin/sprites/vega/idle1_2.bin"
			spr_vega2_idle: .word 2, spr_vega2_idle0, spr_vega2_idle1
			#vega2_jkick
				spr_vega2_jkick0: .asciiz "../img/bin/sprites/vega/jkick_2.bin"
			spr_vega2_jkick: .word 1, spr_vega2_jkick0
			#vega2_jpunch
				spr_vega2_jpunch0: .asciiz "../img/bin/sprites/vega/jpunch_2.bin"
			spr_vega2_jpunch: .word 1, spr_vega2_jpunch0
			#vega2_jump
				spr_vega2_jump0: .asciiz "../img/bin/sprites/vega/jump0_2.bin"
				spr_vega2_jump1: .asciiz "../img/bin/sprites/vega/jump1_2.bin"
			spr_vega2_jump: .word 2, spr_vega2_jump0, spr_vega2_jump1
			#vega2_ko
				spr_vega2_ko0: .asciiz "../img/bin/sprites/vega/ko_2.bin"
			spr_vega2_ko: .word 1, spr_vega2_ko0
			#vega2_power
				spr_vega2_power0: .asciiz "../img/bin/sprites/vega/power0_2.bin"
				spr_vega2_power1: .asciiz "../img/bin/sprites/vega/power1_2.bin"
				spr_vega2_power2: .asciiz "../img/bin/sprites/vega/power2_2.bin"
			spr_vega2_power: .word 3, spr_vega2_power0, spr_vega2_power1, spr_vega2_power2
			#vega2_projectile
				spr_vega2_projectile0: .asciiz "../img/bin/sprites/vega/projectile_2.bin"
			spr_vega2_projectile: .word 1, spr_vega2_projectile0
			#vega2_skick
				spr_vega2_skick0: .asciiz "../img/bin/sprites/vega/skick_2.bin"
			spr_vega2_skick: .word 1, spr_vega2_skick0
			#vega2_spunch
				spr_vega2_spunch0: .asciiz "../img/bin/sprites/vega/spunch_2.bin"
			spr_vega2_spunch: .word 1, spr_vega2_spunch0
			#vega2_victory
				spr_vega2_victory0: .asciiz "../img/bin/sprites/vega/victory_2.bin"
			spr_vega2_victory: .word 1, spr_vega2_victory0
			#vega2_walking
				spr_vega2_walking0: .asciiz "../img/bin/sprites/vega/walking0_2.bin"
				spr_vega2_walking1: .asciiz "../img/bin/sprites/vega/walking1_2.bin"
				spr_vega2_walking2: .asciiz "../img/bin/sprites/vega/walking2_2.bin"
			spr_vega2_walking: .word 3, spr_vega2_walking0, spr_vega2_walking1, spr_vega2_walking2
		sprites_vega2: .word spr_vega2_block, spr_vega2_hit, spr_vega2_idle, spr_vega2_jkick, spr_vega2_jpunch, spr_vega2_jump, spr_vega2_ko, spr_vega2_power, spr_vega2_projectile, spr_vega2_skick, spr_vega2_spunch, spr_vega2_victory, spr_vega2_walking
		#sagat1:
			#sagat1_block
				spr_sagat1_block0: .asciiz "../img/bin/sprites/sagat/block_1.bin"
			spr_sagat1_block: .word 1, spr_sagat1_block0
			#sagat1_hit
				spr_sagat1_hit0: .asciiz "../img/bin/sprites/sagat/hit_1.bin"
			spr_sagat1_hit: .word 1, spr_sagat1_hit0
			#sagat1_idle
				spr_sagat1_idle0: .asciiz "../img/bin/sprites/sagat/idle0_1.bin"
				spr_sagat1_idle1: .asciiz "../img/bin/sprites/sagat/idle1_1.bin"
			spr_sagat1_idle: .word 2, spr_sagat1_idle0, spr_sagat1_idle1
			#sagat1_jkick
				spr_sagat1_jkick0: .asciiz "../img/bin/sprites/sagat/jkick_1.bin"
			spr_sagat1_jkick: .word 1, spr_sagat1_jkick0
			#sagat1_jpunch
				spr_sagat1_jpunch0: .asciiz "../img/bin/sprites/sagat/jpunch_1.bin"
			spr_sagat1_jpunch: .word 1, spr_sagat1_jpunch0
			#sagat1_jump
				spr_sagat1_jump0: .asciiz "../img/bin/sprites/sagat/jump0_1.bin"
				spr_sagat1_jump1: .asciiz "../img/bin/sprites/sagat/jump1_1.bin"
			spr_sagat1_jump: .word 2, spr_sagat1_jump0, spr_sagat1_jump1
			#sagat1_ko
				spr_sagat1_ko0: .asciiz "../img/bin/sprites/sagat/ko_1.bin"
			spr_sagat1_ko: .word 1, spr_sagat1_ko0
			#sagat1_power
				spr_sagat1_power0: .asciiz "../img/bin/sprites/sagat/power0_1.bin"
				spr_sagat1_power1: .asciiz "../img/bin/sprites/sagat/power1_1.bin"
				spr_sagat1_power2: .asciiz "../img/bin/sprites/sagat/power2_1.bin"
			spr_sagat1_power: .word 3, spr_sagat1_power0, spr_sagat1_power1, spr_sagat1_power2
			#sagat1_projectile
				spr_sagat1_projectile0: .asciiz "../img/bin/sprites/sagat/projectile_1.bin"
			spr_sagat1_projectile: .word 1, spr_sagat1_projectile0
			#sagat1_skick
				spr_sagat1_skick0: .asciiz "../img/bin/sprites/sagat/skick_1.bin"
			spr_sagat1_skick: .word 1, spr_sagat1_skick0
			#sagat1_spunch
				spr_sagat1_spunch0: .asciiz "../img/bin/sprites/sagat/spunch_1.bin"
			spr_sagat1_spunch: .word 1, spr_sagat1_spunch0
			#sagat1_victory
				spr_sagat1_victory0: .asciiz "../img/bin/sprites/sagat/victory_1.bin"
			spr_sagat1_victory: .word 1, spr_sagat1_victory0
			#sagat1_walking
				spr_sagat1_walking0: .asciiz "../img/bin/sprites/sagat/walking0_1.bin"
				spr_sagat1_walking1: .asciiz "../img/bin/sprites/sagat/walking1_1.bin"
				spr_sagat1_walking2: .asciiz "../img/bin/sprites/sagat/walking2_1.bin"
			spr_sagat1_walking: .word 3, spr_sagat1_walking0, spr_sagat1_walking1, spr_sagat1_walking2
		sprites_sagat1: .word spr_sagat1_block, spr_sagat1_hit, spr_sagat1_idle, spr_sagat1_jkick, spr_sagat1_jpunch, spr_sagat1_jump, spr_sagat1_ko, spr_sagat1_power, spr_sagat1_projectile, spr_sagat1_skick, spr_sagat1_spunch, spr_sagat1_victory, spr_sagat1_walking
		#sagat2:
			#sagat2_block
				spr_sagat2_block0: .asciiz "../img/bin/sprites/sagat/block_2.bin"
			spr_sagat2_block: .word 1, spr_sagat2_block0
			#sagat2_hit
				spr_sagat2_hit0: .asciiz "../img/bin/sprites/sagat/hit_2.bin"
			spr_sagat2_hit: .word 1, spr_sagat2_hit0
			#sagat2_idle
				spr_sagat2_idle0: .asciiz "../img/bin/sprites/sagat/idle0_2.bin"
				spr_sagat2_idle1: .asciiz "../img/bin/sprites/sagat/idle1_2.bin"
			spr_sagat2_idle: .word 2, spr_sagat2_idle0, spr_sagat2_idle1
			#sagat2_jkick
				spr_sagat2_jkick0: .asciiz "../img/bin/sprites/sagat/jkick_2.bin"
			spr_sagat2_jkick: .word 1, spr_sagat2_jkick0
			#sagat2_jpunch
				spr_sagat2_jpunch0: .asciiz "../img/bin/sprites/sagat/jpunch_2.bin"
			spr_sagat2_jpunch: .word 1, spr_sagat2_jpunch0
			#sagat2_jump
				spr_sagat2_jump0: .asciiz "../img/bin/sprites/sagat/jump0_2.bin"
				spr_sagat2_jump1: .asciiz "../img/bin/sprites/sagat/jump1_2.bin"
			spr_sagat2_jump: .word 2, spr_sagat2_jump0, spr_sagat2_jump1
			#sagat2_ko
				spr_sagat2_ko0: .asciiz "../img/bin/sprites/sagat/ko_2.bin"
			spr_sagat2_ko: .word 1, spr_sagat2_ko0
			#sagat2_power
				spr_sagat2_power0: .asciiz "../img/bin/sprites/sagat/power0_2.bin"
				spr_sagat2_power1: .asciiz "../img/bin/sprites/sagat/power1_2.bin"
				spr_sagat2_power2: .asciiz "../img/bin/sprites/sagat/power2_2.bin"
			spr_sagat2_power: .word 3, spr_sagat2_power0, spr_sagat2_power1, spr_sagat2_power2
			#sagat2_projectile
				spr_sagat2_projectile0: .asciiz "../img/bin/sprites/sagat/projectile_2.bin"
			spr_sagat2_projectile: .word 1, spr_sagat2_projectile0
			#sagat2_skick
				spr_sagat2_skick0: .asciiz "../img/bin/sprites/sagat/skick_2.bin"
			spr_sagat2_skick: .word 1, spr_sagat2_skick0
			#sagat2_spunch
				spr_sagat2_spunch0: .asciiz "../img/bin/sprites/sagat/spunch_2.bin"
			spr_sagat2_spunch: .word 1, spr_sagat2_spunch0
			#sagat2_victory
				spr_sagat2_victory0: .asciiz "../img/bin/sprites/sagat/victory_2.bin"
			spr_sagat2_victory: .word 1, spr_sagat2_victory0
			#sagat2_walking
				spr_sagat2_walking0: .asciiz "../img/bin/sprites/sagat/walking0_2.bin"
				spr_sagat2_walking1: .asciiz "../img/bin/sprites/sagat/walking1_2.bin"
				spr_sagat2_walking2: .asciiz "../img/bin/sprites/sagat/walking2_2.bin"
			spr_sagat2_walking: .word 3, spr_sagat2_walking0, spr_sagat2_walking1, spr_sagat2_walking2
		sprites_sagat2: .word spr_sagat2_block, spr_sagat2_hit, spr_sagat2_idle, spr_sagat2_jkick, spr_sagat2_jpunch, spr_sagat2_jump, spr_sagat2_ko, spr_sagat2_power, spr_sagat2_projectile, spr_sagat2_skick, spr_sagat2_spunch, spr_sagat2_victory, spr_sagat2_walking
		#bison1:
			#bison1_block
				spr_bison1_block0: .asciiz "../img/bin/sprites/bison/block_1.bin"
			spr_bison1_block: .word 1, spr_bison1_block0
			#bison1_hit
				spr_bison1_hit0: .asciiz "../img/bin/sprites/bison/hit_1.bin"
			spr_bison1_hit: .word 1, spr_bison1_hit0
			#bison1_idle
				spr_bison1_idle0: .asciiz "../img/bin/sprites/bison/idle0_1.bin"
				spr_bison1_idle1: .asciiz "../img/bin/sprites/bison/idle1_1.bin"
			spr_bison1_idle: .word 2, spr_bison1_idle0, spr_bison1_idle1
			#bison1_jkick
				spr_bison1_jkick0: .asciiz "../img/bin/sprites/bison/jkick_1.bin"
			spr_bison1_jkick: .word 1, spr_bison1_jkick0
			#bison1_jpunch
				spr_bison1_jpunch0: .asciiz "../img/bin/sprites/bison/jpunch_1.bin"
			spr_bison1_jpunch: .word 1, spr_bison1_jpunch0
			#bison1_jump
				spr_bison1_jump0: .asciiz "../img/bin/sprites/bison/jump0_1.bin"
				spr_bison1_jump1: .asciiz "../img/bin/sprites/bison/jump1_1.bin"
			spr_bison1_jump: .word 2, spr_bison1_jump0, spr_bison1_jump1
			#bison1_ko
				spr_bison1_ko0: .asciiz "../img/bin/sprites/bison/ko_1.bin"
			spr_bison1_ko: .word 1, spr_bison1_ko0
			#bison1_power
				spr_bison1_power0: .asciiz "../img/bin/sprites/bison/power0_1.bin"
				spr_bison1_power1: .asciiz "../img/bin/sprites/bison/power1_1.bin"
				spr_bison1_power2: .asciiz "../img/bin/sprites/bison/power2_1.bin"
				spr_bison1_power3: .asciiz "../img/bin/sprites/bison/power3_1.bin"
				spr_bison1_power4: .asciiz "../img/bin/sprites/bison/power4_1.bin"
			spr_bison1_power: .word 5, spr_bison1_power0, spr_bison1_power1, spr_bison1_power2, spr_bison1_power3, spr_bison1_power4
			#bison1_projectile
				spr_bison1_projectile0: .asciiz "../img/bin/sprites/bison/projectile_1.bin"
			spr_bison1_projectile: .word 1, spr_bison1_projectile0
			#bison1_skick
				spr_bison1_skick0: .asciiz "../img/bin/sprites/bison/skick_1.bin"
			spr_bison1_skick: .word 1, spr_bison1_skick0
			#bison1_spunch
				spr_bison1_spunch0: .asciiz "../img/bin/sprites/bison/spunch_1.bin"
			spr_bison1_spunch: .word 1, spr_bison1_spunch0
			#bison1_victory
				spr_bison1_victory0: .asciiz "../img/bin/sprites/bison/victory_1.bin"
			spr_bison1_victory: .word 1, spr_bison1_victory0
			#bison1_walking
				spr_bison1_walking0: .asciiz "../img/bin/sprites/bison/walking0_1.bin"
				spr_bison1_walking1: .asciiz "../img/bin/sprites/bison/walking1_1.bin"
				spr_bison1_walking2: .asciiz "../img/bin/sprites/bison/walking2_1.bin"
				spr_bison1_walking3: .asciiz "../img/bin/sprites/bison/walking3_1.bin"
			spr_bison1_walking: .word 4, spr_bison1_walking0, spr_bison1_walking1, spr_bison1_walking2, spr_bison1_walking3
		sprites_bison1: .word spr_bison1_block, spr_bison1_hit, spr_bison1_idle, spr_bison1_jkick, spr_bison1_jpunch, spr_bison1_jump, spr_bison1_ko, spr_bison1_power, spr_bison1_projectile, spr_bison1_skick, spr_bison1_spunch, spr_bison1_victory, spr_bison1_walking
		#bison2:
			#bison2_block
				spr_bison2_block0: .asciiz "../img/bin/sprites/bison/block_2.bin"
			spr_bison2_block: .word 1, spr_bison2_block0
			#bison2_hit
				spr_bison2_hit0: .asciiz "../img/bin/sprites/bison/hit_2.bin"
			spr_bison2_hit: .word 1, spr_bison2_hit0
			#bison2_idle
				spr_bison2_idle0: .asciiz "../img/bin/sprites/bison/idle0_2.bin"
				spr_bison2_idle1: .asciiz "../img/bin/sprites/bison/idle1_2.bin"
			spr_bison2_idle: .word 2, spr_bison2_idle0, spr_bison2_idle1
			#bison2_jkick
				spr_bison2_jkick0: .asciiz "../img/bin/sprites/bison/jkick_2.bin"
			spr_bison2_jkick: .word 1, spr_bison2_jkick0
			#bison2_jpunch
				spr_bison2_jpunch0: .asciiz "../img/bin/sprites/bison/jpunch_2.bin"
			spr_bison2_jpunch: .word 1, spr_bison2_jpunch0
			#bison2_jump
				spr_bison2_jump0: .asciiz "../img/bin/sprites/bison/jump0_2.bin"
				spr_bison2_jump1: .asciiz "../img/bin/sprites/bison/jump1_2.bin"
			spr_bison2_jump: .word 2, spr_bison2_jump0, spr_bison2_jump1
			#bison2_ko
				spr_bison2_ko0: .asciiz "../img/bin/sprites/bison/ko_2.bin"
			spr_bison2_ko: .word 1, spr_bison2_ko0
			#bison2_power
				spr_bison2_power0: .asciiz "../img/bin/sprites/bison/power0_2.bin"
				spr_bison2_power1: .asciiz "../img/bin/sprites/bison/power1_2.bin"
				spr_bison2_power2: .asciiz "../img/bin/sprites/bison/power2_2.bin"
				spr_bison2_power3: .asciiz "../img/bin/sprites/bison/power3_2.bin"
				spr_bison2_power4: .asciiz "../img/bin/sprites/bison/power4_2.bin"
			spr_bison2_power: .word 5, spr_bison2_power0, spr_bison2_power1, spr_bison2_power2, spr_bison2_power3, spr_bison2_power4
			#bison2_projectile
				spr_bison2_projectile0: .asciiz "../img/bin/sprites/bison/projectile_2.bin"
			spr_bison2_projectile: .word 1, spr_bison2_projectile0
			#bison2_skick
				spr_bison2_skick0: .asciiz "../img/bin/sprites/bison/skick_2.bin"
			spr_bison2_skick: .word 1, spr_bison2_skick0
			#bison2_spunch
				spr_bison2_spunch0: .asciiz "../img/bin/sprites/bison/spunch_2.bin"
			spr_bison2_spunch: .word 1, spr_bison2_spunch0
			#bison2_victory
				spr_bison2_victory0: .asciiz "../img/bin/sprites/bison/victory_2.bin"
			spr_bison2_victory: .word 1, spr_bison2_victory0
			#bison2_walking
				spr_bison2_walking0: .asciiz "../img/bin/sprites/bison/walking0_2.bin"
				spr_bison2_walking1: .asciiz "../img/bin/sprites/bison/walking1_2.bin"
				spr_bison2_walking2: .asciiz "../img/bin/sprites/bison/walking2_2.bin"
				spr_bison2_walking3: .asciiz "../img/bin/sprites/bison/walking3_2.bin"
			spr_bison2_walking: .word 4, spr_bison2_walking0, spr_bison2_walking1, spr_bison2_walking2, spr_bison2_walking3
		sprites_bison2: .word spr_bison2_block, spr_bison2_hit, spr_bison2_idle, spr_bison2_jkick, spr_bison2_jpunch, spr_bison2_jump, spr_bison2_ko, spr_bison2_power, spr_bison2_projectile, spr_bison2_skick, spr_bison2_spunch, spr_bison2_victory, spr_bison2_walking
	all_sprites: .word sprites_ryu1, sprites_ryu2, sprites_honda1, sprites_honda2, sprites_blanka1, sprites_blanka2, sprites_guile1, sprites_guile2, sprites_ken1, sprites_ken2, sprites_chunli1, sprites_chunli2, sprites_zangief1, sprites_zangief2, sprites_dhalsim1, sprites_dhalsim2, sprites_balrog1, sprites_balrog2, sprites_vega1, sprites_vega2, sprites_sagat1, sprites_sagat2, sprites_bison1, sprites_bison2
