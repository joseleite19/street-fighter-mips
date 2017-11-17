chars = [
	"ryu",
	"honda",
	"blanka",
	"guile",
	"ken",
	"chunli",
	"zangief",
	"dhalsim",
	"balrog",
	"vega",
	"sagat",
	"bison",
]

sprites = [
	("idle",2),
	("walk",4),
	("fjump",4),
	("jump",2),
	("punch",2),
	("kick",2),
	("special",2),
]

for i in xrange(len(sprites)):
	print ".eqv ANIM_%s %d" % (sprites[i][0].upper(),i)
	print ".eqv ANIM_%s_LEN %d" % (sprites[i][0].upper(),sprites[i][1])

print ""

print ".data"

print "\t#sprites:"

all_sprites = "all_sprites: .word "
for char in chars:
	cur_char = "sprites_%s" % char

	if char != chars[0]: all_sprites += ", "
	all_sprites += cur_char

	cur_char += ": .word "
	#ryu:
	print "\t\t#%s:" % char
	for sprite in sprites:
		#ryu_punch:
		cur_sprite = "spr_%s_%s" %(char,sprite[0])
		print "\t\t\t#" + cur_sprite[4:]

		if sprite != sprites[0]: cur_char += ", "
		cur_char += cur_sprite

		cur_sprite += ": .word %d, " % sprite[1]
		for i in xrange(sprite[1]):
			#spr_ryu_punch0: .asciiz "../img/bin/spr_ryu_punch0.bin"
			cur = "spr_%s_%s%d" %(char,sprite[0],i)
			print '\t\t\t\t%s: .asciiz "../img/bin/sprites/%s/%s%d.bin"' %(cur,char,sprite[0],i)

			if i != 0: cur_sprite += ", "
			cur_sprite += cur
		#spr_ryu_punch: .word spr_ryu_punch0, spr_ryu_punch1
		print "\t\t\t"+cur_sprite
	#sprites_ryu: .word spr_ryu_punch, spr_ryu_kick
	print "\t\t"+cur_char
#all_sprites: .word spr_ryu, spr_ken
print "\t"+all_sprites
