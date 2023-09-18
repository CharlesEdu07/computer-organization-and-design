.data
msg: .asciiz "Forneça um número decimal: "
jump_line: "\n"
zero: .float 0.0
pi: .float 3.14

.text
li $v0, 4
la $a0, msg
syscall

li $v0, 6
syscall

lwc1 $f1, zero
add.s $f12, $f1, $f0
li $v0, 2
syscall

.text
li $v0, 4
la $a0, jump_line
syscall

lwc1 $f2, pi
add.s $f12, $f1, $f2
li $v0, 2
syscall