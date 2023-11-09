.data
 C:.asciiz "Calculat the area of a :\n1. Circle\n2.Square\n"
 R:.asciiz "Radics = "
 S:.asciiz "Side = "
 A:.asciiz "Area = "
 E:.asciiz "Invalid Choice "
 L: .float 3.14 
 .text 
 .globl main
 main:
 li $v0,4
 la $a0,C
syscall 
 #==========
 li $v0,5
syscall 
move $t0,$v0

l.s $f1,L # $f1 == L

beq $t0,1,AC
beq $t0,2,AR

li $v0,4
la $a0,E
syscall
j EX

AC:
li $v0,4
la $a0,R
syscall

li $v0,6
syscall
mov.s $f2,$f0

li $v0,4
la $a0,A
syscall

mul.s $f3,$f2,$f2
mul.s $f4,$f3,$f1

li $v0,2
mov.s $f12,$f4
syscall 
j EX
AR:
li $v0,4
la $a0,S
syscall

li $v0,6
syscall
mov.s $f2,$f0

li $v0,4
la $a0,A
syscall

mul.s $f3,$f2,$f2

li $v0,2
mov.s $f12,$f3
syscall
j EX
EX:
li $v0,10
syscall 
 