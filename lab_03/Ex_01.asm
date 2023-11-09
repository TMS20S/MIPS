 .data
value: .word  5
massage: .asciiz "Test Case 1 "
massage2: .asciiz "Test Case 2 "
massage3: .asciiz "Test Case 3 "
massage4: .asciiz "\n"
.text 
.globl main
main:
la $a0, massage 
li $v0, 4
syscall
#user inter
li $v0, 5
syscall 
move $t1,$v0
add $t0,$t1,5
move $a0,$t0
li $v0,1
syscall
la $a0, massage4 
li $v0, 4
syscall
#=========
la $a0, massage2 
li $v0, 4
syscall
li $v0, 5
syscall 
move $t2,$v0
add $t0,$t2,5
move $a0,$t0
li $v0,1
syscall
la $a0, massage4 
li $v0, 4
syscall
#=========
la $a0, massage3 
li $v0, 4
syscall
li $v0, 5
syscall 
move $t3,$v0
add $t0,$t3,5
move $a0,$t0
li $v0,1
syscall
la $a0, massage4 
li $v0, 4
syscall
