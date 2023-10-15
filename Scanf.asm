.globl main
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	#get input A fromuser and save the input
	li $v0, 5 #read int syscall 5
	syscall
	move $t0, $v0
	
	#print string msg2
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	add $t0, $t0, $t1
	 
	#print msg3
	li $v0, 4
	la $a0, msg3
	syscall
	
	#print sum
	li $v0, 1  #print_int syscall
	move $a0, $t0
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	
	li $v0,10
	syscall
	
	.data
msg1: .asciiz "Hello User, enter A:  "
msg2: .asciiz "Hello User, enter B:  "
msg3: .asciiz "The Sum is: A+B= "
newline: .asciiz "\n"
