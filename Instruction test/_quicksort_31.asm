sll $zero,$zero,0
addi $sp,$zero,0x0398
addi $at,$zero,0x0010
sw $at,0($sp)
addi $sp,$sp,0x0004
addi $at,$at,0xffff
sw $at,0($sp)
addi $sp,$sp,0x0004
addi $at,$at,0xffff
sw $at,0($sp)
addi $sp,$sp,0x0004
addi $at,$at,0xffff
sw $at,0($sp)
addi $sp,$sp,0x0004
addi $at,$at,0xffff
sw $at,0($sp)
addi $sp,$sp,0x0004
addi $at,$at,0xffff
sw $at,0($sp)
addi $sp,$sp,0x0004
addi $at,$at,0xffff
sw $at,0($sp)
addi $sp,$sp,0x0004
addi $at,$at,0xffff
sw $at,0($sp)
addi $sp,$sp,0x0004
addi $at,$at,0xffff
sw $at,0($sp)
addi $sp,$sp,0x0004
addi $at,$at,0xffff
sw $at,0($sp)
addi $sp,$sp,0x0004
addi $at,$at,0xffff
sw $at,0($sp)
addi $sp,$sp,0x0004
addi $at,$at,0xffff
sw $at,0($sp)
addi $sp,$sp,0x0004
addi $at,$at,0xffff
sw $at,0($sp)
addi $sp,$sp,0x0004
addi $at,$at,0xffff
sw $at,0($sp)
addi $sp,$sp,0x0004
addi $at,$at,0xffff
sw $at,0($sp)
addi $sp,$sp,0x0004
addi $at,$at,0xffff
sw $at,0($sp)
addi $sp,$sp,0x0004
addi $at,$at,0xffff
sw $at,0($sp)
addi $sp,$sp,0x0004
addi $at,$at,0xffff
sw $at,0($sp)
addi $sp,$sp,0x0004
addi $at,$at,0xffff
sw $at,0($sp)
addi $sp,$sp,0x0004
addi $at,$at,0xffff
sw $at,0($sp)


addiu $sp,$zero,0x0ffc
j main
_partions:
addiu	$sp,$sp,-16
sw	$fp,8($sp)
or $fp,$zero,$sp
sw	$a0,16($fp)
sw	$a1,20($fp)
sw	$a2,24($fp)
lw	$v0,20($fp)
sll $zero,$zero,0
or $v1,$zero,$v0
sll	$v0,$v1,2
lw	$v1,16($fp)
sll $zero,$zero,0
addu	$v0,$v0,$v1
lw	$v1,0($v0)
sll $zero,$zero,0
sw	$v1,0($fp)
_040:
lw	$v0,20($fp)
lw	$v1,24($fp)
sll $zero,$zero,0
slt	$v0,$v0,$v1
sll $zero,$zero,0
bne $v0,$zero,_060
sll $zero,$zero,0
beq $zero,$zero,_1cc
_060:
lw	$v0,20($fp)
lw	$v1,24($fp)
sll $zero,$zero,0
slt	$v0,$v0,$v1
sll $zero,$zero,0
beq $v0,$zero,_0b4
lw	$v0,24($fp)
sll $zero,$zero,0
or $v1,$zero,$v0
sll	$v0,$v1,2
lw	$v1,16($fp)
sll $zero,$zero,0
addu	$v0,$v0,$v1
lw	$v1,0($v0)
lw	$v0,0($fp)
sll $zero,$zero,0
slt	$v1,$v1,$v0
sll $zero,$zero,0
beq $v1,$zero,_0bc
sll $zero,$zero,0
beq $zero,$zero,_0b4
_0b4:
sll $zero,$zero,0
beq $zero,$zero,_0d0
_0bc:
lw	$v0,24($fp)
sll $zero,$zero,0
addiu	$v1,$v0,-1
sw	$v1,24($fp)
beq $zero,$zero,_060
_0d0:
lw	$v0,20($fp)
sll $zero,$zero,0
or $v1,$zero,$v0
sll	$v0,$v1,2
lw	$v1,16($fp)
sll $zero,$zero,0
addu	$v0,$v0,$v1
lw	$v1,24($fp)
sll $zero,$zero,0
or $a0,$zero,$v1
sll	$v1,$a0,2
lw	$a0,16($fp)
sll $zero,$zero,0
addu	$v1,$v1,$a0
lw	$a0,0($v1)
sll $zero,$zero,0
sw	$a0,0($v0)
_114:
lw	$v0,20($fp)
lw	$v1,24($fp)
sll $zero,$zero,0
slt	$v0,$v0,$v1
sll $zero,$zero,0
beq $v0,$zero,_168
lw	$v0,20($fp)
sll $zero,$zero,0
or $v1,$zero,$v0
sll	$v0,$v1,2
lw	$v1,16($fp)
sll $zero,$zero,0
addu	$v0,$v0,$v1
lw	$v1,0($v0)
lw	$v0,0($fp)
sll $zero,$zero,0
slt	$v1,$v0,$v1
sll $zero,$zero,0
beq $v1,$zero,_170
sll $zero,$zero,0
beq $zero,$zero,_168
_168:
sll $zero,$zero,0
beq $zero,$zero,_184
_170:
lw	$v0,20($fp)
sll $zero,$zero,0
addiu	$v1,$v0,1
sw	$v1,20($fp)
beq $zero,$zero,_114
_184:
lw	$v0,24($fp)
sll $zero,$zero,0
or $v1,$zero,$v0
sll	$v0,$v1,2
lw	$v1,16($fp)
sll $zero,$zero,0
addu	$v0,$v0,$v1
lw	$v1,20($fp)
sll $zero,$zero,0
or $a0,$zero,$v1
sll	$v1,$a0,2
lw	$a0,16($fp)
sll $zero,$zero,0
addu	$v1,$v1,$a0
lw	$a0,0($v1)
sll $zero,$zero,0
sw	$a0,0($v0)
beq $zero,$zero,_040
_1cc:
lw	$v0,20($fp)
sll $zero,$zero,0
or $v1,$zero,$v0
sll	$v0,$v1,2
lw	$v1,16($fp)
sll $zero,$zero,0
addu	$v0,$v0,$v1
lw	$v1,0($fp)
sll $zero,$zero,0
sw	$v1,0($v0)
lw	$v1,20($fp)
sll $zero,$zero,0
or $v0,$zero,$v1
beq $zero,$zero,_204
_204:
or $sp,$zero,$fp
lw	$fp,8($sp)
addiu	$sp,$sp,16
jr $ra

_qsort:
addiu	$sp,$sp,-32						
sw	$ra,28($sp)
sw	$fp,24($sp)
or $fp,$zero,$sp
sw	$a0,32($fp)
sw	$a1,36($fp)
sw	$a2,40($fp)
lw	$v0,36($fp)
lw	$v1,40($fp)
sll $zero,$zero,0
slt	$v0,$v0,$v1
sll $zero,$zero,0
beq $v0,$zero,_29c
lw	$a0,32($fp)
lw	$a1,36($fp)
lw	$a2,40($fp)
sll $zero,$zero,0
jal _partions
sll $zero,$zero,0
sw	$v0,16($fp)
lw	$v1,16($fp)
sll $zero,$zero,0
addiu	$v0,$v1,-1
lw	$a0,32($fp)
lw	$a1,36($fp)
or $a2,$zero,$v0
jal _qsort
sll $zero,$zero,0
lw	$v1,16($fp)
sll $zero,$zero,0
addiu	$v0,$v1,1
lw	$a0,32($fp)
or $a1,$zero,$v0
lw	$a2,40($fp)
sll $zero,$zero,0
jal _qsort
sll $zero,$zero,0
_29c:
or $sp,$zero,$fp
lw	$ra,28($sp)
lw	$fp,24($sp)
addiu	$sp,$sp,32
jr	$ra	

_quicksort:
addiu	$sp,$sp,-24
sw	$ra,20($sp)
sw	$fp,16($sp)
or $fp,$zero,$sp
sw	$a0,24($fp)
sw	$a1,28($fp)
lw	$a0,24($fp)
ori $a1,$zero,1
lw	$a2,28($fp)
sll $zero,$zero,0
jal _qsort
sll $zero,$zero,0
or $sp,$zero,$fp
lw	$ra,20($sp)
lw	$fp,16($sp)
addiu	$sp,$sp,24
jr	$ra

main:
addiu	$sp,$sp,-24
sw	$ra,20($sp)
sw	$fp,16($sp)
or $fp,$zero,$sp				
lui	$a0,0x0000
addiu	$a0,$a0,920

ori $a1,$zero,20
jal _quicksort
sll $zero,$zero,0
or $v0,$zero,$zero	
beq $zero,$zero,_318
_318:
or $sp,$zero,$fp
lw	$ra,20($sp)
lw	$fp,16($sp)
addiu	$sp,$sp,24	

#jr	$ra	

#result
#将内存 0x0000039c 开始的20个32位数从小到大排序








