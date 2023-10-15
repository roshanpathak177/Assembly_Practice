.text
.globl main

#always referred as multiplication by 2
main:
	li $t1, 1
	sll $t0, $t1, 2
	li $v0, 10
	syscall
