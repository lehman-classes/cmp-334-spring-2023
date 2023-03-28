# This is a comment

.text
# Generate a random number between 0 and 9
li   $v0, 42     # Load the "random number" syscall code (42) into $v0
li   $a0, 0      # Set the lower bound to 0
li   $a1, 9      # Set the upper bound to 9
syscall          # Invoke the syscall to generate a random number, which will be stored in $v0

add $t0, $zero, $a0
mul $t0, $t0, 4

#li $v0, 1
#add $a0, $zero, $t0
#syscall
# Print the name at the index given by the random number
li   $v0, 4           # Load the "print string" syscall code (4) into $v0
la   $a0, names($t0)   # Load the address of the name at the index given by the random number
syscall               # Invoke the syscall to print the string

# Exit the program
li   $v0, 10          # Load the "exit" syscall code (10) into $v0
syscall               # Invoke the syscall

.data
# Define the list of names
names:
  .asciiz "Alice"     # Store the string "Alice" in memory
  .asciiz "Bob"       # Store the string "Bob" in memory
  .asciiz "Charlie"   # Store the string "Charlie" in memory
  .asciiz "David"     # Store the string "David" in memory
  .asciiz "Eve"       # Store the string "Eve" in memory
  .asciiz "Frank"     # Store the string "Frank" in memory
  .asciiz "Grace"     # Store the string "Grace" in memory
  .asciiz "Henry"     # Store the string "Henry" in memory
  .asciiz "Iris"      # Store the string "Iris" in memory
  .asciiz "Jane"      # Store the string "Jane" in memory
