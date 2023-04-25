# data segment
	.data

# String greeting = "\nHello, World!\n";

# label for data
greeting: 	.asciiz  "\nHello, World!\n"

favorite_number: 	.byte 8

# instruction / code segment
	.text
main:
	li $t0, 10
	sw $t0, favorite_number
	
	lw $t1, favorite_number
#start:
#	li $t0, 1
#	j next   # Goto 
	
#show:
		# Code to indicate syscall service to use
#	li $v0, 4
	# based on service code, place address of string at register a0
#	la $a0, greeting
	# tell the runtime to execute requested service
#	syscall 
	
#	li $t0, 0
	
#next:
#	beq $t0, 1, show
	
	#li $t5, 4194304   # direct
#	la $t5, start      # pseudo-direct
#	jr $t5


	# Code to indicate syscall service to use
	li $v0, 10
	# tell the runtime to executed requested service
	syscall 