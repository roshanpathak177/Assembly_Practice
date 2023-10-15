.text
.globl main
main: 
	li $t0, 10 #No. of iterations
	li $t1, 0  # t1 is our counter
	li $t2, 17 # holds the value to modify
	
loop:
	beq $t1, $t0, end #if t1==10, end the loop
	add $t2, $t2, $t1
	addi $t1, $t1, 1 #add 1 to t1
	j loop #loop again
end:
	li $v0, 10
	syscall
