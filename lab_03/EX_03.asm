 .data
value: .word 100
massage: .asciiz "Major: "
massage2: .asciiz "Name: "
massage3: .space 100
massage4: .space  100
massage5: .asciiz "Age: "
massage6: .asciiz "\n"
.text 
.globl main
main:
#input string 1
 li $v0, 8
 la $a0, massage4
 lw $a1,value  
 syscall
#input string 2
 li $v0, 8
 la $a0, massage3
 lw $a1,value  
 syscall
#input int 
 li $v0, 5
 syscall 
 move $t1,$v0
#print Name
 la $a0, massage2 
 li $v0, 4
syscall
#ptint input 1
 li $v0,4
 la $a0,massage4
 syscall
# print \n 
 la $a0, massage6 
 li $v0, 4
 syscall
# ptint Major
 la $a0, massage 
 li $v0, 4
 syscall
# ptint input 2
li $v0,4
la $a0,massage3
syscall
# print \n
la $a0, massage6 
li $v0, 4
syscall
# print Age
la $a0, massage5 
li $v0, 4
syscall
# print input 3(int)
move $a0,$t1
li $v0,1
syscall
# print \n
la $a0, massage6 
li $v0, 4
syscall
