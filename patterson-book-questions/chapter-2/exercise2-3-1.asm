#B[i+j] = A[i-j]

.data
arrayA: .word 1, 9, 3, 4, 5, 6, 7, 8, 9, 10

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

add $t2, $s3, $s4
sll $t2, $t2, 2
add $t2, $t2, $s7

sw $t1, 0($t2)

li $v0, 1
lw $a0, 36($s7)
syscall
