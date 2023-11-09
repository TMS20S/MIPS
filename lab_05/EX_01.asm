.data 
U: .asciiz "Enter a number : "
n: .asciiz "\n"
O: .asciiz "The number is Odd "
E: .asciiz "The number is Even "
.text 
.globl main
main:
#===========
la $a0, U 
li $v0, 4
syscall
#============
li $v0, 5
syscall
#========
move $t1,$v0
#=========
rem $t0,$t1,2
#=============
beqz $t0,Even
la $a0, O 
li $v0, 4
syscall
#=========
Even:
la $a0, E 
li $v0, 4
syscall

