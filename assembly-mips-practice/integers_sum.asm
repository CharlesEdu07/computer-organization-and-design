.text
li $t0, 75 #Guarda 75 em um registrador temporariamente
li $t1, 25 #Guarda 25 em um registrador temporariamente

add $t2, $t0, $t1 #Somando os valores dos registradores $t0 e $t1 e guardando em $t2 
addi $t3, $t2, 36 #Adicionando um valor imediato a $t2 e guardando em $t3

li $v0, 10
syscall