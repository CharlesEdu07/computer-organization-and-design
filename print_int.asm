.data
#�rea para dados na mem�ria principal
integer: .word 81 #Valor inteiro

.text
#�rea para instru��es do programa

li $v0, 1
lw $a0, integer
syscall

li $v0, 10
syscall
