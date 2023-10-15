.data
x:    .word 5
msg:  .asciiz "y= "

.text
.globl main

main:
    lw $t0, x           # Load x (5) into $t0
    jal function        # Call the function with x as an argument
    move $a0, $v0       # Move the result of the function into $a0
    li $v0, 4           # Print the message "y="
    la $a1, msg
    syscall
    li $v0, 1           # Print the value of y
    syscall
    li $v0, 10          # Exit the program
    syscall

function:
    lw $a0, 0($a1)      # Load the argument 'a' into $a0
    li $t0, 3
    mul $a0, $a0, $t0   # Multiply 'a' by 3
    li $t1, 5
    add $v0, $a0, $t1   # Add 5 to the result and store it in $v0
    jr $ra              # Return from the function

