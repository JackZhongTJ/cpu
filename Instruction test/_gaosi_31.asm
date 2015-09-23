sll $zero,$zero,0
or	$a0,$zero,$zero
_10:
slti	$v0,$a0,101
bne		$v0,$0,_24
sll $0,$0,0
beq		$0,$0,_30
sll $0,$0,0
_24:
addu	$v1,$v1,$a0
addiu	$a0,$a0,1
beq		$0,$0,_10
_30:
or		$v0,$0,$v1

#$v0($2) = 32'h000013ba
#$v1($3) = 32'h000013ba
#$a0($4) = 32'h00000065