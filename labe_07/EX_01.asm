.data 
B:.asciiz "BASE : "
E:.asciiz "EXPONENT : "
P:.asciiz "POWER = "
.text 
.globl main
main:
li $v0,4
la $a0,B
syscall 

li $v0,5
syscall 
move $s0,$v0

li $v0,4
la $a0,E
syscall 

li $v0,5
syscall 
move $s1,$v0

move $t1,$s0
move $t2,$s1
li $t3,1
c:
beq $t2,$zero,D
mul $t3,$t3,$t1
subi $t2,$t2,1
j c
D:
li $v0,4
la $a0,P
syscall 

li $v0,1
move $a0,$t3
syscall 
li $v0,10
syscall 
