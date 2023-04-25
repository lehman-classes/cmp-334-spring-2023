	.data

N: 	.word 10  # a word is 32 bits or 4 bytes
i:	.byte 1   # a byte is 8 bits
	
	.text
main:
	li $s0, 0   # s0;  Sum = 0
	lw $s1, N   # s1;  N = 10
	lb $t0, i   # t0;  i = 1
	
loop:
	beq $t0, $s1, done
	add $s0, $s0, $t0
	addi $t0, $t0, 1
	b loop
	
done:
	li $v0, 1
	addi $a0, $s0, 0
	syscall

exit:
	li $v0, 10
	syscall