.data
msgUser: .asciiz "Forneça um número positivo: "
msgEven: .asciiz "O número é par. "
msgOdd: .asciiz "O número é impar. "

.text
.globl _main
_main:
la $a0, msgUser
jal printString
jal readInt

move $a0, $v0

jal isOdd
beq $v0, $zero, printEven
la $a0, msgOdd
jal printString
jal exitProgram

printEven:
la $a0, msgEven
jal printString
jal exitProgram

isOdd:
li $t0, 2
div $a0, $t0
mfhi $v0
jr $ra

printString:
li $v0, 4
syscall
jr $ra

readInt:
li $v0, 5
syscall
jr $ra

exitProgram:
li $v0, 10
syscall