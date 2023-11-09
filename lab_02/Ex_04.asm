
.data
    str_prompt:  .asciiz "Please enter two numbers: "
    str_result:  .asciiz "The max is: "
.text
    main:
        # Display prompt
        li $v0, 4
        la $a0, str_prompt
        syscall
        # Read two integers
        li $v0, 5
        syscall
        move $t0, $v0     # Store the first integer in $t0==10
        li $v0, 5
        syscall
        move $t1, $v0     # Store the second integer in $t1==1
        # Find the maximum
        sub $t2, $t0, $t1  # $t2 = $t0 - $t1 ==9
       
        bgez $t2, max_t0   # Branch if $t0 >= $t1 9>=10
        move $t3, $t1     # $t3 = $t1==10
        j print_result     # Jump to print_result
    max_t0:
        move $t3, $t0     # $t3 = $t0
    print_result:
        # Display the result
        li $v0, 4
        la $a0, str_result
        syscall
        # Display the maximum
        li $v0, 1
        move $a0, $t3
        syscall
       
       