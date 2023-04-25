	.data

varA:	.byte  0
varB: 	.byte  10    # int b = 10;
varC: 	.byte  20    # int c = 20;
output:	.asciiz "a = "  # System.out.println("a = " + a);

	
	# Java Code
	#int b = 10;
	#int c = 20;
	#int a = b + c;
	#System.out.println("a = " + a);
	
	.text

main:
	lb $t2, varB
	lb $t3, varC
	
	# int a = b + c;
	add $t1, $t2, $t3
	sb $t1, varA
	
	# System.out.println("a = " + a);
	li $v0, 4
	la $a0, output
	syscall
	
	# let's pretend that $t1 does not have the add operation results
	# therefore, we need to bring the result from varA into a register
	# in order to print it 
	
	lb $t4, varA
	
	# System.out.println("a = " + a);
	li $v0, 1
	add $a0, $zero, $t4
	#lb $a0, varA
	syscall
	
	
exit:
	li $v0, 10
	syscall
	
	
	
	
	
	 
# arithmetic operators ( +, -, * and / )
# int a = b + c

		
