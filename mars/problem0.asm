#  write a program that ask the user for their name and print it in reverse

	.data
prompt:		.asciiz "Please enter your name: "
name:		.space 8
done:		.asciiz "done"

	.text
main:
	li $v0, 4
	la $a0, prompt
	syscall
	
	li $v0, 8
	la $a0, name
	li $a1, 64
	syscall
	
	jal print_in_reverse
	
	li $v0, 4
	la $a0, done
	syscall
	
exit:
	li $v0, 10
	syscall
	
print_in_reverse:

	# add your code here
	
	jr $ra