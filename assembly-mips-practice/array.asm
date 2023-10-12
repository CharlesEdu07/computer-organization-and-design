.data
array:
.align 2
.space 16 #Pode alocar 4 inteiros no vetor

blankSpace: .byte ' '

.text
.globl _main
_main:
move $t0, $zero #Indice do vetor
move $t1, $zero #Valor a ser inserido no vetor
li $t2, 16

loop:
beq $t0, $t2, endLoop
sw $t1, array($t0)
addi $t0, $t0, 4
addi $t1, $t1, 1
j loop

endLoop:
move $t0, $zero

printIntegerArray:
beq $t0, $t2, endPrintIntegerArray
li $v0, 1
lw $a0, array($t0)
syscall

addi $t0, $t0, 4

j printIntegerArray

endPrintIntegerArray:
li $v0, 10
syscall
