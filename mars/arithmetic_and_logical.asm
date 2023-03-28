	.data

total: .asciiz "Total: "

	.text
main:
# adding 3 values
	li $t1, 5
	li $t2, 12
	li $t3, 5
	add $t0, $t1, $t2
	add $t0, $t0, $t3
	
	li $v0, 4
	la $a0, total
	syscall
	
	li $v0, 1
	add $a0, $zero, $t0
	syscall
	
	
# logical instructions
	srl $t1, $t2, 2
	
exit:
	li $v0, 10
	syscall