.text
.globl main
main:
	li $t2, 10
	lw $t3, value # here "value" is the variable
	add $t4, $t2, $t3
	sub $t5, $t2, $t3
	li $v0, 10
	syscall
	
value: .word 20
	# The word directive gets the space allotted in memory for us.
	# It can get a single 4-byte word (or multiple 4-byte words)
	# and assigns that memory location an initial value which we specify.
	
