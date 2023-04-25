	.data

varA:	.byte  0
varB: 	.byte  5    # int b = 10;
varC: 	.byte  3    # int c = 20;
varD:	.byte  30    # a byte is 0000 0000  (8 bits) number ranging from 0 - 256; or if signed -128 to 127 
output:	.asciiz "a = "  # System.out.println("a = " + a);

	
	# Java Code
	# int b = 10;
	# int c = 20;
	# int d = 30; 
	# int a = b + c + d;
	#System.out.println("a = " + a);
	
	.text

main:
	lb $t2, varB
	lb $t3, varC
	lb $t4, varD
	
	# int a = b + c;
	add $t1, $t2, $t3
	# int a + a + d;
	add $t1, $t1, $t4
	sb $t1, varA
	
	div $t2, $t3
	
	# System.out.println("a = " + a);
	li $v0, 4
	la $a0, output
	syscall
	
	# let's pretend that $t1 does not have the add operation results
	# therefore, we need to bring the result from varA into a register
	# in order to print it 
	
	# System.out.println("a = " + a);
	li $v0, 1
	add $a0, $zero, $t1
	#lb $a0, varA
	syscall
	
	
exit:
	li $v0, 10
	syscall
	
	
	
	
	
	 
# arithmetic operators ( +, -, * and / )
# int a = b + c

		
