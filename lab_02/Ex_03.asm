 .data
value: .word  
massage: .asciiz "1. "
massage2: .asciiz "2. "
massage3: .asciiz "=== "
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
#2
 la $a0, massage2 
li $v0, 4
syscall

li $v0, 5
syscall 
#===
 la $a0, massage3
li $v0, 4
syscall

move $t2,$v0
mul  $t3,$t1,$t2
move $a0,$t3
#print
li $v0,1
syscall 