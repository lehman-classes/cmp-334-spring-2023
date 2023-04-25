
	.data

nums:	.word 12, 19, 45, 24, 11, 8
length: .word 6
space:  .asciiz ", "
prompt: .asciiz "enter an integer: "
	
	.text
main:
	la $t0, nums  	# save memory address of array nums
	li $t1, 0	# set loop counter to zero
	lw $t2, length	# save array nums length
	
	jal get_integer
	
print_loop:
	beq $t1, $t2, exit
	
	li $v0, 1
	lw $a0, ($t0)
	syscall
	
	li $v0, 4
	la $a0, space
	syscall
	
	addi $t1, $t1, 1
	addi $t0, $t0, 4
	
	j print_loop	


exit:
	li $v0, 10
	syscall
	
get_integer:
	# Prompt the user to enter an integer value. Read and return
	# it. It takes no parameters.
	li $v0, 4 # system call code for printing a

	# string = 4
	la $a0, prompt # address of string is argument 0 to

	# print_string
	syscall # call operating system to perform

	# print operation
	li $v0, 5 # get ready to read in integers
	syscall # system waits for input, puts the

	# value in $v0
	jr $ra