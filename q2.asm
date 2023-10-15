.globl main
.text
main:
	#print y=
	#do the math
	#print int 20
	
	lw $t1, x
	jal function
	move $t0, $t1
	li $v0, 4
	la, $a0, msg
	syscall
	
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall
	
function:
	lw $t1, x
	mult $t1, 3
	mflo $t2
	addi $t2, 5
	syscall
	
x: .word 5

.data
msg: .asciiz "y= "

