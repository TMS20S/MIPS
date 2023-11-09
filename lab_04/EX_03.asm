.data 
nb:.asciiz "Enter a number: "
r2: .asciiz "^2 = "
r3: .asciiz "^3 = "
r4: .asciiz "^4 = "
r5: .asciiz "^5 = "
n: .asciiz " \n "
.text 
.globl main
main:
la $a0, nb 
li $v0, 4
syscall
#=====
li $v0, 5
syscall 
move $t1,$v0
#====
move $a0,$t1
li $v0,1
syscall
la $a0, r2 
li $v0, 4
syscall
#====
mul $t2,$t1,$t1
move $a0,$t2
li $v0,1
syscall
#====\n
la $a0, n 
li $v0, 4
syscall
#==== 
move $a0,$t1
li $v0,1
syscall
la $a0, r3 
li $v0, 4
syscall
#====
mul $t3,$t1,$t2
move $a0,$t3
li $v0,1
syscall
#====\n
la $a0, n 
li $v0, 4
syscall
#======
move $a0,$t1
li $v0,1
syscall
la $a0, r4 
li $v0, 4
syscall
#====
mul $t4,$t1,$t3
move $a0,$t4
li $v0,1
syscall
#====\n
la $a0, n 
li $v0, 4
syscall
#=========
move $a0,$t1
li $v0,1
syscall
la $a0, r5 
li $v0, 4
syscall
#====
mul $t5,$t1,$t4
move $a0,$t5
li $v0,1
syscall
#====\n
la $a0, n 
li $v0, 4
syscall