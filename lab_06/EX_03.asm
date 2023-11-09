.data 
.text 
.globl main
main:
li $t0,10
li $t1,1
li $t2,1
loop:
ble $t0,$t1,ex
addi $t1,$t1,1 
mul $t3,$t1,$t1
add $t2,$t2,$t3 
j loop

ex:
li $v0,1
move $a0,$t2
syscall
 


 