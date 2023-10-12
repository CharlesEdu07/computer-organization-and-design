.data
#Área para dados na memória principal
integer: .word 81 #Valor inteiro

.text
#Área para instruções do programa

li $v0, 1
lw $a0, integer
syscall

li $v0, 10
syscall
