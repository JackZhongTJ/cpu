sll $zero,$zero,0
addiu $sp,$zero,0x03fc
j main

mul:
addiu	$sp,$sp,-8
sw	$fp,0($sp)
or $fp,$0,$sp
sw	$a0,8($fp)
sw	$a1,12($fp)
lw	$a0,8($fp)
or $v1,$0,$0
_1c:
lw	$v0,12($fp)
sll $0,$0,0
slt	$a1,$v1,$v0
bne $a1,$zero,_38
sll $0,$0,0
beq $0,$0,_44
sll $0,$0,0
_38:
addu	$a0,$a0,$a0
addiu	$v1,$v1,1
beq $0,$0,_1c
_44:
or $v0,$a0,$zero
beq $0,$0,_4c
_4c:
or $sp,$fp,$zero
lw	$fp,0($sp)
addiu	$sp,$sp,8
jr	$ra

main:
addiu	$sp,$sp,-40
sw	$ra,36($sp)
sw	$fp,32($sp)
sw	$s1,28($sp)
sw	$s0,24($sp)
or $fp,$sp,$0
sw	$zero,16($fp)
ori $s0,$zero,2
ori $s1,$zero,18
or $a0,$s0,$zero
or $a1,$s1,$zero
jal	mul	
sll $0,$0,0
lw	$v1,16($fp)
sll $0,$0,0
sw	$v0,0($v1)
or $v0,$zero,$zero
beq $0,$0,_a0
_a0:
or $sp,$fp,$zero
lw	$ra,36($sp)
lw	$fp,32($sp)
lw	$s1,28($sp)
lw	$s0,24($sp)
addiu	$sp,$sp,40

#result
#$4=0x00080000
#$29=0x000003fc
