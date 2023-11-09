.data
 W: .word 3 ,2 ,1
 N: .asciiz "  Name: "
 D: .space 100 
 V: .word 100
.text
.globl main
main:
la $t0,W
lw $t1,0($t0)
lw $t2,4($t0)
lw $t3,8($t0)
li $t4,3
li $t5,0# i=0
loop:
	beq $t5,$t4,ex
	addi $t5,$t5,1
		blt $t1,$t2,g # 3<2  # 2<1
		blt $t1,$t3,r # 3<1 # 2<3
		move $t6,$t1 # t6 =3 #
		move $t1,$t2 # t1=2 # 
		move $t2,$t3  # t2=1 #
		move $t3,$t6 # t3=3 #
		
r:
 	move $t6,$t1 # t6 =2 #
	move $t1,$t2 # t1=1 # 
	move $t2,$t6  # t2=2 #
	
g:
	blt $t2,$t3,ex # 
	move $t6,$t2
	move $t2,$t3
	move $t3,$t6
	j ex		
ex:
li $v0,1
 move $a0,$t6
 syscall
 
 
 li $v0,4
 la $a0,N
 syscall
 
li $v0,1
move $a0,$t1
syscall
 
 
 li $v0,4
 la $a0,N
 syscall
 
 li $v0,1
 move $a0,$t2
 syscall

li $v0,4
 la $a0,N
 syscall		

li $v0,1
 move $a0,$t3
 syscall
 
 
NAME:    
li $v0, 8
 la $a0, D
 lw $a1,V 
 syscall
 
 li $v0,4
 la $a0,N
 syscall
 
 
 li $v0,4
 la $a0,D
 syscall