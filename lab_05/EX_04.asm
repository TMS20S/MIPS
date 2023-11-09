.data
A:.asciiz "A"
B:.asciiz "B"
C:.asciiz "C"
D:.asciiz "D"
F:.asciiz "F"
E:.asciiz "Error"
G:.asciiz "plese enter the grade : "

.text 
.globl main
main:
#==========
la $a0,G 
li $v0, 4
syscall
#============
li $v0, 5
syscall
#========
move $t1,$v0
#===========
bgt $t1,100,ER 
blt $t1,0,ER
bge $t1,90,G_A
bge $t1,80,G_B
bge $t1,70,G_C
bge $t1,60,G_D
j G_F
j ex
G_A:
la $a0,A
li $v0,4
syscall
j ex
ER:
la $a0,E
li $v0,4
syscall
j ex 
G_B:
la $a0,B
li $v0,4
syscall
j ex
G_C:
la $a0,C
li $v0,4
syscall
j ex
G_D:
la $a0,D
li $v0,4
syscall
j ex
G_F:
la $a0,F
li $v0,4
syscall
j ex
ex:
li $v0,10
syscall

