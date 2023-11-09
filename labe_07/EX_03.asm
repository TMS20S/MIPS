.data
v1: .word 1,2,3,4,5
v2: .word 2,4,1,3,1
 
.text
.globl main
main:
   
    la $t0, v1        
    la $t1, v2    
    li $t6, 5     
loop:
    lw $t2, 0($t0)  
    lw $t3, 0($t1)      
    mul $t4, $t2, $t3     
    add $t5, $t5, $t4
    addi $t0, $t0, 4
    addi $t1, $t1, 4
    subi $t6, $t6, 1
    bnez $t6, loop
    
   move $a0,$t5
   li $v0, 1
   syscall 
    li $v0, 10
    syscall