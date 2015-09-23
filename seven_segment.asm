sll  $zero,$zero,0
addi $sp,$zero,0x0398
addi $at,$zero,0x0123
sw   $at,0($sp)

addi $sp,$sp,0x0004
addi $at,$zero,0x4567
sw   $at,0($sp)

addi $sp,$sp,0x0004
addi $at,$zero,0x89AB
sw   $at,0($sp)

addi $sp,$sp,0x0004
addi $at,$zero,0xCDEF
sw   $at,0($sp)


_main:

addi $v1,$v1,0x0100
addi $s0,$s0,0x0004
addi $sp,$zero,0x0398

_loop:
lw $v0,0($sp)
addi $sp,$sp,0x0004
addi $zero,$zero,1
andi $a0,$a0,0

_delay:
addi $a0,$a0,1
bne $a0,$v1,_delay

bne $zero,$s0,_loop

andi $zero,$zero,0
addi $sp,$zero,0x0398
beq $zero,$zero,_loop




