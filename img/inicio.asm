 # Sprites para Lab1

.eqv VGA 0xFF000000

.data 
BUFFER: .space 5300
FILE1: .asciiz "arcade.bin"

.text

# Preenche a tela de vermelho

	la $t1,0xFF012C00
	la $s2,0xFF000000
	la $s1,0xF8F8F8F8
LOOP: 	beq $s2,$t1,FORA
	sw $s1,0($s2)
	addi $s2,$s2,4
	j LOOP
FORA:	
# Abre o arquivo com tela de fundo
	la $a0,FILE1
	li $a1,0
	li $a2,0
	li $v0,13
	syscall

# Le o arquivo para a memoria VGA
	move $a0,$v0
	la $a1,VGA
	li $a2,76800
	li $v0,14
	syscall

#Fecha o arquivo
	li $v0,16
	syscall
