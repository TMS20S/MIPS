 .data
value: .asciiz "The product is:"
massage: .asciiz "\n"
.text 
.globl main
main:
la $a0, value 
li $v0, 4
syscall
#li $v0,10
#syscall







