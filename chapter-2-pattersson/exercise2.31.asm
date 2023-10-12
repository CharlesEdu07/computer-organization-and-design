.data
  n: .word
  
.text
  .globl _main
    _main:
      la $a0, n
      
      jal fib
      
      fib:
        sw  $ra, 0($sp)  # Save the return address
        sw  $a0, 4($sp)  # Save the argument
        
        addi $sp, $sp, -8
      
        beq $a0, $zero, caseBase
        beq $a0, 1, secondCase 
        
        jal fib
        
        caseBase:
          add $v0, $v0, $zero
          
          jr $ra
          
        secondCase:
          li $v0, 1
          
          jr $ra
           