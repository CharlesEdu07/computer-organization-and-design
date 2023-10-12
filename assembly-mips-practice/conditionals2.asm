.data
greater: .asciiz "O n�mero � maior que zero: "
less: .asciiz "O n�mero � menor do que zero"
equal: .asciiz "O n�mero � igual a zero"

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