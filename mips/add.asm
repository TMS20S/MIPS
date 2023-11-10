.data 
n: .asciiz "\n"
N: .asciiz "Name "
M: .asciiz " Major "
A: .asciiz "Age"
S_N: .space 100
S_M: .space 100
W: .word 100
.text 
.globl main
main:

j P

ex:
li $v0,10
syscall
add_5:
li $v0,5
syscall 
move $t0,$v0
addi $t0,$t0,5
move $a0,$t0
li $v0,1
syscall 
j ex 
F:
	li $v0,5
	syscall 
	move $t0,$v0
	mul $t0,$t0,$t0
	mul $t0,$t0,2
	addi $t0,$t0,1
	move $a0,$t0
	li $v0,1
	syscall 
	li $v0,10
	syscall
Name:
	li $v0,8
	la $a0,S_N
	lw $a1,W
	syscall 
	li $v0,4
	la $a0,S_N
 	syscall 
	
	
	
	
V_S:
	li $v0,8
	la $a0,S_M
	lw $a1,W
	syscall 
	move $t0,$v0
	
	li $v0,5
	syscall 
	move $t1,$v0 
	mul $t1,$t1,12
	
	li $v0,4
 	la $a0,S_M
	syscall
	
	move $a0,$t1
	li $v0,1
	syscall 
P:
	li $v0,5
	syscall 
	move $t1,$v0
	li $t2,0
	li $t0,4
	move $t9,$t1
	lop:
	beq $t2,$t0,ex
		mul $t1,$t1,$t9
		addi $t2,$t2,1
		
		move $a0,$t1
		li $v0,1
		syscall
		
		li $v0,4
 		la $a0,M
		syscall
		
		
		move $a0,$t2
		li $v0,1
		syscall
		
		li $v0,4
 		la $a0,n
		syscall
		j lop
		
	
		
		
	
	
