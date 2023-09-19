.data
msg: .asciiz "Forneça um número: "
even: .asciiz "Par"
odd: .asciiz "Impar"

.text
li $v0, 4
la $a0, msg
syscall

li $v0, 5
syscall

li $t0, 2
div $v0, $t0

mfhi $t1

beq $t1, $zero, printEven

li $v0, 4
la $a0, odd
syscall

j Exit

printEven: 
li $v0, 4
la $a0, even
syscall

Exit:
li $v0, 10
syscall
