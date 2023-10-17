la $s0, MemArray    # Carrega o endereço base de MemArray em $s0
lw $s2, result      # Carrega o valor da variável result em $s2 (inicializado como 0)
lw $t1, i           # Carrega o valor da variável i em $t1
addi $t1, $zero, 0  # Define $t1 como 0
Loop:               # Início do loop
beq $t1, 10, end    # Verifica se $t1 == 10, se verdadeiro, sai do loop (fim do programa)
lw $s1, 0($s0)      # Carrega o valor da memória em $s0 + offset 0 em $s1 (memArray[i])
add $s2, $s2, $s1   # Adiciona $s1 a $s2 (result = result + memArray[i])
sw $s2, result      # Armazena o valor de $s2 na variável result
addi $s0, $s0, 4    # Atualiza $s0 para apontar para o próximo elemento de MemArray (MemArray[i + 1])
addi $t1, $t1, 1    # Incrementa o valor de $t1 (i = i + 1)
sw $t1, i           # Armazena o valor de $t1 na variável i
j Loop              # Salto incondicional para o início do loop

O código realiza uma iteração sobre um array de inteiros e soma todos os valores contidos nele.

Podemos perceber isso ao observar a presença de uma instrução "beq", que realiza a verificação
necessária para determinar se o loop será executado ou não. Se a condição do "beq" não for verdadeira, 
o código prossegue incrementando os valores nos registradores e retornando ao início do label "loop".
Caso a condição seja atendida, o programa salta para o label que encerra o programa.

Para representar essas funcionalidades, podemos usar estruturas de repetição, como o "for",
que já inclui uma condição e um incremento em sua própria estrutura, ou um "while", que possui uma
condição de parada, mas também nos permite incrementar uma variável dentro de seu escopo.
