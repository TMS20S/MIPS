.data 
massage: .asciiz "Enter the 1st number: "
massage2: .asciiz "Enter the 2nd number: "
add1: .asciiz " + "
sub1: .asciiz " - "
mul1: .asciiz " * "
div1: .asciiz " / "
rem1: .asciiz " % "
eql: .asciiz " = "
n: .asciiz " \n "
.text 

.globl main
main:
# print (Enter the 1st number:)
la $a0, massage 
li $v0, 4
syscall
# User input (5) is int
li $v0, 5
syscall
# The user  input Move from $v0 ==> to ==> $t1
move $t1,$v0
# print (Enter the 2nd number:)
la $a0, massage 
li $v0, 4
syscall
# User input (5) is int
li $v0, 5
syscall 
# The user  input Move from $v0 ==> to ==> $t2
move $t2,$v0
# Add The 2 input  
# The user  input Move from $t1 ==> to ==> $a0 too print the input
move $a0,$t1
# print the $a0 
li $v0,1
syscall 
# print (+)
la $a0, add1 
li $v0, 4
syscall
# The user  input Move from $t2 ==> to ==> $a0 too print the input
move $a0,$t2
# print the $a0
li $v0,1
syscall
# print (=)
la $a0, eql 
li $v0, 4
syscall
# Add $t1 + $t2 the answer put in $t3
add $t3,$t1,$t2
# The user  input Move from $t3 ==> to ==> $a0 too print the input
move $a0,$t3
# print the $a0
li $v0,1
syscall
# print (\n)
la $a0, n 
li $v0, 4
syscall
#----------
#=============
move $a0,$t1
li $v0,1
syscall 
la $a0, sub1 
li $v0, 4
syscall
move $a0,$t2
li $v0,1
syscall 
la $a0, eql 
li $v0, 4
syscall
#============
sub $t4,$t1,$t2
move $a0,$t4
li $v0,1
syscall 
la $a0, n 
li $v0, 4
syscall
#******************
#=============
move $a0,$t1
li $v0,1
syscall 
la $a0, mul1 
li $v0, 4
syscall
move $a0,$t2
li $v0,1
syscall 
la $a0, eql 
li $v0, 4
syscall
#============
mul $t5,$t1,$t2
move $a0,$t5
li $v0,1
syscall 
la $a0, n 
li $v0, 4
syscall
#////////////////////
#=============
move $a0,$t1
li $v0,1
syscall 
la $a0, div1 
li $v0, 4
syscall
move $a0,$t2
li $v0,1
syscall 
la $a0, eql 
li $v0, 4
syscall
#============
div  $t6,$t1,$t2
move $a0,$t6
li $v0,1
syscall 
la $a0, n 
li $v0, 4
syscall
#%%%%%%%%%%%%%%%%%
#=============
move $a0,$t1
li $v0,1
syscall 
la $a0, rem1 
li $v0, 4
syscall
move $a0,$t2
li $v0,1
syscall 
la $a0, eql 
li $v0, 4
syscall
#============
rem $t7,$t1,$t2
move $a0,$t7
li $v0,1
syscall
 la $a0, n 
li $v0, 4
syscall
