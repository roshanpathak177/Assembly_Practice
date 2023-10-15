.globl main
.text
main: 
	li $t1, 5
	li $t2, 3
	
	beq $t1, $t2, end
	bne $t1, $t2, addbro
	
end:
	li $v0, 10
	syscall
	
addbro: 
	add $t3, $t1, $t2
	li $v0, 10
	syscall
