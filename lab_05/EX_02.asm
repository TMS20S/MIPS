.data
W: .asciiz "Enter your Weight(in pounds): "
H: .asciiz "Enter your Height(in Inches): "
n: .asciiz "\n"
BMI: .asciiz "Your BMI is : "
U: .asciiz "Under Weight"
N:.asciiz "Normal"
.text 
.globl main
main:
#=====
la $a0, W 
li $v0, 4
syscall
#========
li $v0, 5
syscall
#======
move $t1,$v0
#=======
la $a0, H 
li $v0, 4
syscall
#========
li $v0, 5
syscall
#======
move $t2,$v0
#=======
mul $t3,$t2,$t2
div $t4,$t1,$t3
#========
la $a0, BMI 
li $v0, 4
syscall
#=======
li $v0,1
move $a0,$t4
syscall
#=====
la $a0, n 
li $v0, 4
syscall
#=======
blt $t4,21,Un
#=====
la $a0, N 
li $v0, 4
syscall
j ex
Un:
la $a0, U 
li $v0, 4
syscall
j ex
ex:
li $v0,10
syscall




