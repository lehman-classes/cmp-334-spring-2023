	.data

varA: 	.byte 4 # 0000 0100
varB:	.byte 5 # 0000 0101
                # 0000 0010 SRL
                # 0001 0000 SLL
                # 0000 0101 OR 
                # 0000 0100 AND

# AND Truth Table
#A B Q
#0 0 0
#0 1 0
#1 0 0
#1 1 1

# OR Truth Table
#A B Q
#0 0 0
#0 1 1
#1 0 1
#1 1 1
		
	.text

main:

	lb $t1, varA
	lb $t2, varB
	
	and $s0, $t1, $t2
	or $s1, $t1, $t2
	sll $s2, $t1, 2
	srl $s3, $t2, 1
	
exit:
	li $v0, 10
	syscall
	