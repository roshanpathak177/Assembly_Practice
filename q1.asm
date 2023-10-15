.data
A:      .word -2, -2     # Declare and initialize the array A[2] with -2.

.text
.globl main

main:
    li $v0, 5          # Syscall code 5 for reading an integer.
    syscall
    move $t0, $v0      # Store the input value in $t0.

    #switch statement's logic.
    li $t1, 0          # Initialize $t1 for comparison.
    beq $t0, $t1, case0
    li $t1, 1
    beq $t0, $t1, case1
    li $t1, 2
    beq $t0, $t1, case2

default:
    # Default case
    sw $zero, A         # Store -1 in A[0].
    j print_result

case0:
    # Case 0
    sw $zero, 0(A)        # Store 0 in A[0].
    j print_result

case1:
case2:
    # Cases 1 and 2
    li $t1, 1          # Load 1 into $t1.
    sw $t1, 4(A)       # Store 1 in A[1].

print_result:
    # Printing the values of i and A.
    li $v0, 1          # Syscall code 1 for printing an integer.
    move $a0, $t0      # Load $t0 into $a0.
    syscall

    la $t2, A          # Load the address of A into $t2.
    lw $a0, 0($t2)     # Load A[0] into $a0.
    li $v0, 1
    syscall

    lw $a0, 4($t2)     # Load A[1] into $a0.
    li $v0, 1
    syscall

    # Exit the program
    li $v0, 10         # Syscall code 10 for program exit.
    syscall

