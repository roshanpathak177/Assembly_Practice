.text
.globl Main
main:
	li $t1, 8
	srl $t0, $t1, 3
	li $v0, 10
	syscall
	#srl is equal to dividing by 2
