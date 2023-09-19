.data
greater: .asciiz "O número é maior que zero: "
less: .asciiz "O número é menor do que zero"
equal: .asciiz "O número é igual a zero"

.text
li $v0, 5
syscall

move $t0, $v0

beq $t0, $zero, printEqual
bgt $t0, $zero, printGreater
blt $t0, $zero, printLess

printEqual:
li $v0, 4
la $a0, equal
syscall

j Exit

printGreater:
li $v0, 4
la $a0, greater
syscall

j Exit

printLess:
li $v0, 4
la $a0, less
syscall

Exit:
li $v0, 10
syscall