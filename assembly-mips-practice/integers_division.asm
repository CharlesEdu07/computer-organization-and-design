.text
li $t0, 32
li $t1, 5

div $t0, $t1

#Guardando parte inteira da divisão
mflo $s0

#Recuperando resto
mfhi $s1

srl $s2, $t0, 2 #Divide o valor armazenado em $t0 por 2^2 usando shift right