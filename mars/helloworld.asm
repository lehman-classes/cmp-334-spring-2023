# data segment
	.data

# String greeting = "\nHello, World!\n";

# label for data
greeting: 	.asciiz  "\nHello, World!\n"

# instruction / code segment
	.text
main:
	# Code to indicate syscall service to use
	li $v0, 4
	# based on service code, place address of string at register a0
	la $a0, greeting
	# tell the runtime to execute requested service
	syscall 
	
	# Code to indicate syscall service to use
	li $v0, 10
	# tell the runtime to executed requested service
	syscall 
	


