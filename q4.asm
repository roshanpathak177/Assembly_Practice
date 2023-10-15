.data
input_msg:   .asciiz "Enter a decimal number: "
output_msg:     .asciiz "Binary: "
newline:        .asciiz "\n"

.text
.globl main

main:
    # Display the input message
    li $v0, 4
    la $a0, input_msg
    syscall

    # Read the decimal input
    li $v0, 5
    syscall
    move $t0, $v0  # Store the input in $t0

    # Print "Binary: "
    li $v0, 4
    la $a0, output_msg
    syscall

    # Print the binary representation
    li $t1, 31      # Initialize a counter for 32 bits (I am assuming 32-bit binary representation)

print_loop:
    srl $t2, $t0, $t1  # Shift right to check the leftmost bit
    andi $t2, $t2, 1   # Get the rightmost bit
    addi $t2, $t2, 48  # Convert to ASCII '0' or '1'

    # Print the binary digit
    li $v0, 11
    move $a0, $t2
    syscall

    addi $t1, $t1, -1  # Decrement the counter
    bgez $t1, print_loop

    # Print a newline
    li $v0, 4
    la $a0, newline
    syscall

exit:
    # Exit the program
    li $v0, 10
    syscall

