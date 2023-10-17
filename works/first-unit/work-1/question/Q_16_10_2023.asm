.data
  MemArray: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
  i: .word 0
  result: .word 0

.text
.globl _main
  _main:
  la $s0, MemArray    # $s0 = &MemArray
  lw $s2, result      # $s2 = 0
  lw $t1, i 	        # $t1 = 0
  addi $t1, $zero, 0  # $t1 = 0
  Loop:               # Label de loop
  beq $t1, 10, end    # if ($t1 == 10) { Fim do programa } else {
  lw $s1, 0($s0)	    # $s1 = $s0[0]
  add $s2, $s2, $s1   # $s2 = $s2 + $s1
  sw $s2, result      # result = $s2
  addi $s0, $s0, 4    # $s0 = $&MemArray[i] + 1
  addi $t1, $t1, 1    # $t1 = $t1 + $t1
  sw $t1, i           # i = $t1
  j Loop              # Faz o Loop
  
  end:                # Label para encerrra o programa
  
  li $v0, 1
  move $a0, $s2
  syscall
  
  li $v0, 10	  # Indica o encerramento do programa
  syscall             # Encerra o programa
