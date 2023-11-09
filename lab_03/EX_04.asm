 .data
value: .word  
massage: .asciiz "Enter a: "
massage2: .asciiz "Enter b: "
massage3: .asciiz "Enter c: "
massage4: .asciiz "Volume: "
massage5: .asciiz "Surface Area: "
massage6: .asciiz "\n "
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
move $t2,$v0 
#===
 la $a0, massage3 
li $v0, 4
syscall

li $v0, 5
syscall 
move $t3,$v0
#====
 la $a0, massage4 
li $v0, 4
syscall
mul  $t4,$t1,$t2
mul  $t5,$t3,$t4
move $a0,$t5
li $v0,1
syscall 
#========
la $a0, massage6 
li $v0, 4
syscall
#======
la $a0, massage5 
li $v0, 4
syscall
mul  $t7,$t1,$t3
mul  $t8,$t3,$t2
add $t9,$t7,$t8
add $t6,$t4,$t9
mul  $t3,$t6,2
move $a0,$t3
li $v0,1
syscall
