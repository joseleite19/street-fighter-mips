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
	("block",1),
	("fjump",4),
	("hit",1),
	("idle",2),
	("jkick",1),
	("jpunch",1),
	("jump",2),
	("ko",1),
	("power",2),
	("projectile",0),
	("skick",1),
	("spunch",1),
	("victory",1),
	("walking",4),
]

excs = [
	("balrog","fjump",0),
	("blanka","fjump",0),
	("blanka","walking",3),
	("bison","fjump",0),
	("bison","power",4),
	("chunli","fjump",3),
	("chunli","projectile",1),
	("dhalsim","fjump",0),
	("dhalsim","projectile",1),
	("guile","fjump",5),
	("guile","power",3),
	("guile","projectile",1),
	("honda","fjump",3),
	("honda","walking",2),
	("ken","power",4),
	("ryu","projectile",1),
	("sagat","fjump",0),
	("sagat","projectile",1),
	("sagat","walking",3),
	("vega","fjump",3),
	("vega","walking",3),
	("zangief","fjump",0),
	("zangief","power",4),
]
	

for i in xrange(len(sprites)):
	print ".eqv ANIM_%s %d" % (sprites[i][0].upper(),i)
	print ".eqv ANIM_%s_LEN %d" % (sprites[i][0].upper(),sprites[i][1])

print ""

print ".data"

print "\t#sprites:"

all_sprites = "all_sprites: .word "
for char in chars:
	for i in xrange(1,3):
		cur_char = "sprites_%s%d" % (char,i)

		if char != chars[0] or i!=1: all_sprites += ", "
		all_sprites += cur_char

		cur_char += ": .word "
		#ryu1:
		print "\t\t#%s%d:" % (char,i)
		for s in sprites:

			sprite = list(s)
			for exc in excs:
				if char == exc[0] and sprite[0] == exc[1]:
					sprite[1] = exc[2]

			cur_sprite = "spr_%s%d_%s" %(char,i,sprite[0])
			#ryu1_punch:
			print "\t\t\t#%s" % cur_sprite[4:]

			if sprite[0] != sprites[0][0]: cur_char += ", "
			cur_char += cur_sprite

			if sprite[1] == 0:
				cur_sprite += ": .word %d" % sprite[1]
			elif sprite[1] == 1:
				cur_sprite += ": .word %d, " % sprite[1]
				cur = "spr_%s%d_%s0" %(char,i,sprite[0])
				#spr_ryu1_punch0: .asciiz "../img/bin/spr_ryu_block_1.bin"
				print '\t\t\t\t%s: .asciiz "../img/bin/sprites/%s/%s_%d.bin"' %(cur,char,sprite[0],i)
				cur_sprite += cur
			else:
				cur_sprite += ": .word %d, " % sprite[1]
				for j in xrange(sprite[1]):
					cur = "spr_%s%d_%s%d" %(char,i,sprite[0],j)
					#spr_ryu1_punch0: .asciiz "../img/bin/spr_ryu_punch0_1.bin"
					print '\t\t\t\t%s: .asciiz "../img/bin/sprites/%s/%s%d_%d.bin"' %(cur,char,sprite[0],j,i)

					if j != 0: cur_sprite += ", "
					cur_sprite += cur
			#spr_ryu1_punch: .word 2, spr_ryu1_punch0, spr_ryu1_punch1
			print "\t\t\t"+cur_sprite
		#sprites_ryu1: .word spr_ryu1_punch, spr_ryu1_kick
		print "\t\t"+cur_char
#all_sprites: .word spr_ryu1, spr_ryu2, spr_ken1, spr_ken2
print "\t"+all_sprites
