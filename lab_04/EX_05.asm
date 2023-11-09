.data 
grades: .word 87, 95, 66
u:.asciiz "Grades before bonus: "
a:.asciiz "Grades after bonus: "
s:.asciiz " "
n:.asciiz "\n"
.text 
.globl main
main:
la $t0,  grades
lw $t1,0($t0)
lw $t2,4($t0)
lw $t3,8($t0)
#====
la $a0, u 
li $v0, 4
syscall

move $a0,$t1
li $v0,1
syscall
#======
la $a0, s 
li $v0, 4
syscall

move $a0,$t2
li $v0,1
syscall
#===
la $a0, s 
li $v0, 4
syscall
#====
move $a0,$t3
li $v0,1
syscall  
#==== 
la $a0, n 
li $v0, 4
syscall
#=====

la $a0, a 
li $v0, 4
syscall

add $t4,$t1,5
sw $t4,0($t0)
move $a0,$t4
li $v0, 1 
syscall
#=========
la $a0, s 
li $v0, 4
syscall

add $t5,$t2,5
sw $t5,4($t0)
move $a0,$t5
li $v0, 1 
syscall
#========
la $a0, s 
li $v0, 4
syscall

add $t6,$t3,5
sw $t6,8($t0)
move $a0,$t6
li $v0, 1
syscall
