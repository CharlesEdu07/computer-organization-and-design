.text
li $t0, 12
li $t1, 10

mul $t2, $t0, $t1

sll $s1, $t1, 10 #Multiplica por 2^10 = 1024

li $v0, 1
move $a0 $t2

syscall
