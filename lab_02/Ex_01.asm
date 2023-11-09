.data
value: .word 30 ,20 
N: .asciiz "\n"
.text 
.globl main
main:
la $t0,value
lw $t1,0($t0)
lw $t2,4($t0)
move $a0,$t2
li $v0,1
syscall


li $v0,4
 la $a0,N
 syscall


move $a0,$t1
li $v0,1
syscall


li $v0,4
 la $a0,N
 syscall


move $a0,$t0
li $v0,3
syscall




li $v0,4
 la $a0,N
 syscall

mul  $t3,$t1,$t2
move $a0,$t3
li $v0,1
syscall 
