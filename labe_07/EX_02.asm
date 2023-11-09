.data
   n: .asciiz "\n" 
   P: .asciiz "Please enter n : "  
   T: .asciiz "The Fibonacci of the first  "
   T1: .asciiz " number are :\n"
.text
.globl main
main:
    li $v0,4
    la $a0,P
     syscall
   li $v0,5
   syscall 
   move $t3,$v0
      subi $t0,$t3,1     
    li $t1, 1        
    li $t2, 1        
   
   
   li $v0,4
    la $a0,T
     syscall
     li $v0,1
     move $a0,$t3
     syscall 
      li $v0,4
    la $a0,T1
     syscall
   
    li $v0, 1
    move $a0, $t1
    syscall
   
    blez $t0, exit
   
    li $v0,4
    la $a0,n
     syscall
  
    loop:
       
        add $t3, $t1, $t2  
        move $t1, $t2     
        move $t2, $t3     
      
        li $v0, 1
        move $a0, $t1
        syscall
      
       li $v0,4
    la $a0,n
     syscall
     
        subi $t0, $t0, 1
        
        bnez $t0, loop
    exit:
  
    li $v0, 10
    syscall