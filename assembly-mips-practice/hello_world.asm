.data
#Área para dados na memória principal
msg: .asciiz "Hello World" #Mensagem a ser exibida para o usuário"

.text
#Área para instruções do programa

li $v0, 4 #Instrução para impressão de String
la $a0, msg #Indica o endereço em que está a mensagem
syscall #Realizar ação do sistema, neste caso, imprimir

li $v0, 10
syscall
