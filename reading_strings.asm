.data
question: .asciiz "Qual é seu nome? "
greeting: .asciiz "Olá, "
name: .space 50

.text
li $v0, 4
la $a0, question
syscall

#Leitura da String
li $v0, 8
la $a0, name
la $a1, 50
syscall

li $v0, 4
la $a0, greeting
syscall

li $v0, 4
la $a0, name
syscall