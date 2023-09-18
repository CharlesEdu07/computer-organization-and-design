.data
input_msg: .asciiz "Olá. Por favor, digite a sua idade: "
output_msg: .asciiz "Sua idade é: "

.text

li $v0, 4 #Imprimir String
la $a0, input_msg
syscall

li $v0, 5 #Ler inteiro
syscall

move $t0, $v0

li $v0, 4 #Imprimir String
la $a0, output_msg
syscall

li $v0, 1
move $a0, $t0
syscall
