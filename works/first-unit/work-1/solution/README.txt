
la $s0, MemArray    # $s0 = &MemArray
lw $s2, result      # $s2 = result = 0
lw $t1, i 	        # $t1 = i = 0
addi $t1, $zero, 0  # $t1 = 0
Loop:               # Label com as instruções que irão se repetir
beq $t1, 10, end    # se ($t1 == 10) { Sai do Loop/Fim do programa } caso não :
lw $s1, 0($s0)	    # $s1 = $s0 com offset 0 do endereço atual (memArray[i])
add $s2, $s2, $s1   # $s2 = $s2 + $s1 (result = result + memArray[i])
sw $s2, result      # result = $s2
addi $s0, $s0, 4    # $s0 = &MemArray[i + 1] (Calculando o próximo index)
addi $t1, $t1, 1    # $t1 = $t1 + 1 (i = i + 1)
sw $t1, i           # i = $t1
j Loop              # Jump para o label loop, formalizando o laço
