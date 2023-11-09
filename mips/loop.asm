.data
 w: .word 9 2 5
 N: .asciiz "Name: "
 D: .space 100 
 V: .word 100
.text
.globl main
main:
    
li $v0, 8
 la $a0, D
 lw $a1,V 
 syscall
 
 li $v0,4
 la $a0,N
 syscall
 
 
 li $v0,4
 la $a0,D
 syscall