.data 
u:.asciiz "Enter u (m/s) : "
a:.asciiz "Enter a (m/s^2) :"
t:.asciiz "Enter t (s) : "
v:.asciiz "v = "
v1:.asciiz " m/s "
.text 
.globl main
main:
la $a0, u 
li $v0, 4
syscall
#=======
li $v0, 5
syscall 
move $t1,$v0
#===========
la $a0, a 
li $v0, 4
syscall
#=======
li $v0, 5
syscall 
move $t2,$v0
#===========
la $a0, t 
li $v0, 4
syscall
#=======
li $v0, 5
syscall 
move $t3,$v0
#===========
la $a0, v 
li $v0, 4
syscall
mul $t4,$t2,$t3
add $t5,$t4,$t1
move $a0,$t5
li $v0,1
syscall 
la $a0, v1 
li $v0, 4
syscall