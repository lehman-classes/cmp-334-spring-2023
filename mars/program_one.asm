	.data

fav_nums: 	.space 20 	# each word (32 bits or 4 bytes) is able to store a single number
				# so to store 5 ints, we'll need 5*4=20 bytes
				# int[5]
prompt:		.asciiz "Enter favorite number: "
next:		.asciiz "\n"
count:		.byte 5

#  ---------- ------------ --------- ----------- --------- ----------- #

	.text
main:
	li $t0, 0
	lb $t1, count 
	la $s0, fav_nums
	
loop:
	beq $t0, $t1, continue
	
	# prompt user
	li $v0, 4
	la $a0, prompt
	syscall
	
	# read input
	li $v0, 5
	syscall
	
	# store value in array fav_nums
	sw $v0, ($s0)
	
	# increment loop and array memeory address
	addi $s0, $s0, 4 # 4 bytes equals a word or 32 bits
	addi $t0, $t0, 1
	j loop
continue:
	jal print_array

exit:
	li $v0, 10
	syscall

print_array:
	la $s0, fav_nums
	li $t0, 0
	lb $t1, count 
	
print_loop:
	beq $t0, $t1, exit
	# print item in array
	li $v0, 1
	lw $a0, ($s0)
	syscall
	
	# print next line
	li $v0, 4
	la $a0, next
	syscall

	addi $s0, $s0, 4 # 4 bytes equals a word or 32 bits
	addi $t0, $t0, 1
	j print_loop
	
	jr $ra