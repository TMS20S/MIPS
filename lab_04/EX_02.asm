.data 
name:.asciiz "Enter your name: "
selary:.asciiz "Enter your selery: "
welcame:.asciiz "welcame  "
income:.asciiz "Your annual income is  "
v: .word 100
m: .space 100
.text  
.globl main
main:
# Enter your name:
 la $a0, name 
li $v0, 4
syscall
#=====
li $v0, 8
 la $a0, m
 lw $a1,v 
 syscall
 #=======
  la $a0, selary 
li $v0, 4
syscall
#=====
 li $v0, 5
syscall 
move $t1,$v0
#=======
la $a0, welcame 
li $v0, 4
syscall
#=======
 li $v0,4
 la $a0,m
 syscall
#====
la $a0, income 
li $v0, 4
syscall
#=====
 mul $t5,$t1,12
move $a0,$t5
li $v0,1
syscall 