.data 
T:.asciiz "$"
x:.asciiz "*"
.text
.globl main
main:
    li $t0, 1       
l:
   
    rem $t1, $t0, 2   
  
    beqz $t1, e     
    li $v0,4
    la $a0,T
    syscall
    j n
e:
   li $v0,4
   la $a0,x
   syscall
n:
   
    addi $t0, $t0, 1
    li $t2, 10         
    sub $t2, $t2, $t0
    bnez $t2, l
    li $v0, 10
    syscall