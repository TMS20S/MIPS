.data
E:.asciiz "Enter a number : "
N:.asciiz "The number you enterd is Negative"
P:.asciiz "The number you enterd is Positive"
Z:.asciiz "The number you enterd is Zero"
.text 
.globl main
main:
la $a0,E 
li $v0, 4
syscall
#=====
li $v0, 5
syscall
#========
move $t1,$v0
#=======
blt $t1,0,NE
beqz $t1,ZE
bgt $t1,0,PO
NE:
la $a0,N 
li $v0, 4
syscall
j ex
PO:
la $a0,P 
li $v0, 4
syscall
j ex
ZE:
la $a0,Z 
li $v0, 4
syscall
j ex
ex:
li $v0,10
syscall