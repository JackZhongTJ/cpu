sll $zero,$zero,0
addiu $sp,$zero,0x03fc
j main
_fib:
addiu	$sp,$sp,-32
sw	$ra,24($sp)
sw	$fp,20($sp)
sw	$s0,16($sp)
or $fp,$sp,$zero
sw	$a0,32($fp)
lw	$v0,32($fp)
ori $v1,$zero,1
beq $v0,$v1,_40
sll $zero,$zero,0
lw	$v0,32($fp)						
ori $v1,$zero,2
beq $v0,$v1,_40
sll $zero,$zero,0
beq $zero,$zero,_50
sll $zero,$zero,0
_40:															
ori $v0,$zero,1
beq $zero,$zero,_88
beq $zero,$zero,_88
sll $zero,$zero,0
_50:
lw	$v1,32($fp)
sll $zero,$zero,0
addiu	$v0,$v1,-1
or $a0,$zero,$v0
jal _fib
sll $zero,$zero,0
or $s0,$zero,$v0
lw	$v1,32($fp)
sll $zero,$zero,0
addiu	$v0,$v1,-2
or $a0,$zero,$v0
jal _fib
sll $zero,$zero,0
addu	$v1,$s0,$v0
or $v0,$zero,$v1	
beq $zero,$zero,_88
_88:
or $sp,$zero,$fp
lw	$ra,24($sp)
lw	$fp,20($sp)
lw	$s0,16($sp)
addiu $sp,$sp,32
jr $ra

main:
addiu	$sp,$sp,-32
sw	$ra,28($sp)
sw	$fp,24($sp)
or $fp,$sp,$zero
sw	$zero,16($fp)
ori $v0,$zero,5					#should be five
sw	$v0,20($fp)
lw	$a0,20($fp)
jal _fib
sll $zero,$zero,0	
sw	$v0,16($fp)
lw	$v1,16($fp)
sll $zero,$zero,0
or $v0,$v1,$zero
beq $zero,$zero,_dc
_dc:
or $sp,$fp,$zero
lw	$ra,28($sp)
lw	$fp,24($sp)
addiu $sp,$sp,32
#jr $ra

#result
#dram 0x000003EC = 0x00000005
#$2=0x00000005
#$3=0x00000005
#$4=0x00000001
#$29=0x000003fc





