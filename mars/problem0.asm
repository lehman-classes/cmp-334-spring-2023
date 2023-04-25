#  write a program that ask the user for their name and print it in reverse

	.data
prompt:		.asciiz "Please enter your name: "
name:		.space 8

	.text
main:
	li $v0, 4
	la $a0, prompt
	syscall
	
	li $v0, 8
	la $a0, name
	li $a1, 64
	syscall
	
	
	li $v0, 4
	la $a0, name
	syscall
	

exit:
	li $v0, 10
	syscall