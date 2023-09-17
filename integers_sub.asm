.text
li $t0, 75 #Guarda 75 em um registrador temporariamente
li $t1, 25 #Guarda 25 em um registrador temporariamente

sub $t2, $t0, $t1 #Subtraindo os valores dos registradores $t0 e $t1 e guardando em $t2 
subi $t3, $t2, 40 #Subtraindo um valor imediato a $t2 e guardando em $t3

li $v0, 10
syscall