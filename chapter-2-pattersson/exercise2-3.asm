#B[8] = A[i-j]

.data
arrayA: .word 1, 7, 3, 4, 5, 6, 7, 8, 9, 10

arrayB: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10

f: .word 1
g: .word 2
h: .word 3
i: .word 5
j: .word 4

.text
.globl _main
_main:
lw $s0, f
lw $s1, g
lw $s2, h
lw $s3, i
lw $s4, j

la $s6, arrayA
la $s7, arrayB

sub $t0, $s3, $s4
sll $t0, $t0, 2
add $t0, $s6, $t0

lw $t1, 0($t0)

sw $t1, 32($s7)

li $v0, 1
lw $a0, 32($s7)
syscall
