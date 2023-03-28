
	.data
	
hello:  .asciiz "Hi"
	
	.text
main:

# transferring data from memory into a register
	la $t1, hello
	lw $t0, ($t1)
	
exit:
	li $v0, 10
	syscall
	 