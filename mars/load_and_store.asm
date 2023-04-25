	.data

data:    .space 4 # 0000 0000 0000 0000 
things:	 .ascii "abcdef"

		
	.text
main:
	li $t1, 1024 # 0000 0000 0000 0000
	sw $t1, data
	
	la $s0, data
	j print_value
	
	lw $t2, data

copy:	
	lw $t3, 8($s0)
	j exit
	
print_value:

	li $v0, 4
	addi $a0, $s0, 4 
	syscall
	
	la $s1, data
	
	beq $s0, $s1, copy
	
	
exit:
	li $v0, 10
	syscall
	
	
	lw $t4, 4($s0)
	
