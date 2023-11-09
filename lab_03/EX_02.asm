#void main() {
 #int x;
 #cout<<"Please enter a number: ";
 #cin>>x;
 #int y = 2*x*x+1;
 #cout<<"The result is: ";
 #cout<<y;
#}
 .data
value: .word  5
massage: .asciiz "Test Case 1: "
massage2: .asciiz "Test Case 2: "
massage3: .asciiz "Test Case 3: "
massage4: .asciiz "The result is:"
massage5: .asciiz "\n"
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
mul $t9,$t1,$t1
mul $t8,$t9,2
add $t0,$t8,1
la $a0, massage4 
li $v0, 4
syscall
move $a0,$t0
li $v0,1
syscall
la $a0, massage5 
li $v0, 4
syscall
#=======
la $a0, massage2 
li $v0, 4
syscall
#user inter
li $v0, 5
syscall 
move $t2,$v0
mul $t9,$t2,$t2
mul $t8,$t9,2
add $t0,$t8,1
la $a0, massage4 
li $v0, 4
syscall
move $a0,$t0
li $v0,1
syscall
la $a0, massage5 
li $v0, 4
syscall
#=========
la $a0, massage3 
li $v0, 4
syscall
#user inter
li $v0, 5
syscall 
move $t3,$v0
mul $t9,$t3,$t3
mul $t8,$t9,2
add $t0,$t8,1
la $a0, massage4 
li $v0, 4
syscall
move $a0,$t0
li $v0,1
syscall
la $a0, massage5 
li $v0, 4
syscall