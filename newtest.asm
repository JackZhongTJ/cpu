sll $zero,$zero,0
addi $30,$0,0x00ff
addi $29,$0,0x1004
sw $30,0($29)

lui $2,0x8000
lui $3,0x7fff
ori $3,$3,0xffff
addi $4,$0,0xffff
add $1,$2,$3
bne $1,$4,wrong
add $1,$3,$2
bne $1,$4,wrong

addi $2,$0,0x0001
lui $3,0x7fff
ori $3,$3,0xffff
lui $4,0x8000
addu $1,$2,$3
bne $1,$4,wrong
addu $1,$3,$2
bne $1,$4,wrong

addi $2,$0,0x0001
lui $3,0x7fff
ori $3,$3,0xffff
lui $4,0x8000
addu $1,$2,$3
bne $1,$4,wrong
addu $1,$3,$2
bne $1,$4,wrong

lui $2,0x8000
addi $3,$0,0xffff
lui $4,0x7fff
ori $4,$4,0xffff
addu $1,$2,$3
bne $1,$4,wrong
addu $1,$3,$2
bne $1,$4,wrong

addi $2,$0,0x0000
addi $3,$0,0x0001
addi $4,$0,0xffff
addi $5,$0,0x0001
sub $1,$2,$3
bne $1,$4,wrong
sub $1,$3,$2
bne $1,$5,wrong

#lui $2,0x8000
#addi $3,$0,0x0001
#lui $4,0x7fff
#ori $4,$4,0xffff
#addi $5,$0,0x0000
#sub $1,$2,$3
#bne $1,$4,wrong
#sub $1,$3,$2
#bne $1,$5,wrong

addi $2,$0,0xffff
addi $3,$0,0xffff
addi $4,$0,0x0000
addi $5,$0,0x0000
sub $1,$2,$3
bne $1,$4,wrong
sub $1,$3,$2
bne $1,$5,wrong

addi $2,$0,0x0000
addi $3,$0,0x0001
addi $4,$0,0xffff
addi $5,$0,0x0001
subu $1,$2,$3
bne $1,$4,wrong
subu $1,$3,$2
bne $1,$5,wrong

addi $2,$0,0x0000
lui $3,0xaaaa
ori $3,$3,0xaaaa
addi $4,$0,0x0000
and $1,$2,$3
bne $1,$4,wrong

addi $2,$0,0xffff
lui $3,0xaaaa
ori $3,$3,0xaaaa
lui $4,0xaaaa
ori $4,$4,0xaaaa
and $1,$2,$3
bne $1,$4,wrong

addi $2,$0,0xffff
lui $3,0x5555
ori $3,$3,0x5555
lui $4,0x5555
ori $4,$4,0x5555
and $1,$2,$3
bne $1,$4,wrong

lui $2,0xaaaa
ori $2,$2,0xaaaa
addi $3,$0,0x0000
lui $4,0xaaaa
ori $4,$4,0xaaaa
or $1,$2,$3
bne $1,$4,wrong

addi $2,$0,0xffff
lui $3,0x5555
ori $3,$3,0x5555
addi $4,$0,0xffff
or $1,$2,$3
bne $1,$4,wrong

addi $2,$0,0x0000
addi $3,$0,0x0000
addi $4,$0,0x0000
or $1,$2,$3
bne $1,$4,wrong

lui $2,0xaaaa
ori $2,$2,0xaaaa
lui $3,0x5555
ori $3,$3,0x5555
addi $4,$0,0xffff
xor $1,$2,$3
bne $1,$4,wrong

addi $2,$0,0xffff
addi $3,$0,0xffff
addi $4,$0,0x0000
xor $1,$2,$3
bne $1,$4,wrong

addi $2,$0,0x0000
addi $3,$0,0x0000
addi $4,$0,0x0000
xor $1,$2,$3
bne $1,$4,wrong

addi $2,$0,0x0000
lui $3,0x5555
ori $3,$3,0x5555
lui $4,0xaaaa
ori $4,$4,0xaaaa
nor $1,$2,$3
bne $1,$4,wrong

addi $2,$0,0xffff
lui $3,0x5555
ori $3,$3,0x5555
addi $4,$0,0x0000
nor $1,$2,$3
bne $1,$4,wrong

addi $2,$0,0xffff
addi $4,$0,0x0000
addi $1,$2,0x0001
bne $1,$4,wrong

#lui $2,0x7fff
#ori $2,$2,0xffff
#lui $4,0x8000
#addi $1,$2,0x0001
#bne $1,$4,wrong

lui $2,0x8fff
ori $2,$2,0xffff
lui $4,0x8fff
ori $4,$4,0xfffe
addi $1,$2,0xffff
bne $1,$4,wrong

addi $2,$0,0xffff
addi $4,$0,0x0000
addiu $1,$2,0x0001
bne $1,$4,wrong

lui $2,0x8fff
ori $2,$2,0xffff
lui $4,0x8fff
ori $4,$4,0xfffe
addiu $1,$2,0xffff
bne $1,$4,wrong

lui $2,0xaaaa
ori $2,$2,0xaaaa
addi $4,$0,0x0000
lui $5,0xaaaa
ori $5,$5,0xaaaa
andi $1,$2,0x0000
bne $1,$4,wrong
ori $1,$2,0x0000
bne $1,$5,wrong

lui $2,0xaaaa
ori $2,$2,0xaaaa
ori $4,$0,0xaaaa
andi $1,$2,0xffff
bne $1,$4,wrong

lui $2,0x5555
ori $2,$2,0x5555
lui $4,0x5555
ori $4,$4,0xffff
ori $5,$0,0x5555
andi $1,$2,0xffff
bne $1,$5,wrong
ori $1,$2,0xffff
bne $1,$4,wrong

add $2,$0,$0
addi $4,$0,0x0000
ori $1,$2,0x0000
bne $1,$4,wrong

lui $2,0xaaaa
ori $2,$2,0xaaaa
lui $4,0xaaaa
ori $4,$4,0xaaaa
xori $1,$2,0x0000
bne $1,$4,wrong

addi $2,$0,0xffff
lui $4,0xffff
xori $1,$2,0xffff
bne $1,$4,wrong

addi $2,$0,0x0000
lui $3,0x7fff
addi $4,$0,0x0001
slt $1,$2,$3
bne $1,$4,wrong
slt $1,$3,$2
bne $1,$0,wrong

lui $2,0x8fff
addi $3,$0,0x0000
addi $4,$0,0x0001
slt $1,$2,$3
bne $1,$4,wrong
slt $1,$3,$2
bne $1,$0,wrong

lui $2,0x7fff
lui $3,0x8fff
addi $4,$0,0x0001
slt $1,$2,$3
bne $1,$0,wrong
slt $1,$3,$2
bne $1,$4,wrong

addi $2,$0,0x0000
lui $3,0x7fff
addi $4,$0,0x0001
sltu $1,$2,$3
bne $1,$4,wrong
sltu $1,$3,$2
bne $1,$0,wrong

lui $2,0x8fff
addi $3,$0,0x0000
addi $4,$0,0x0001
sltu $1,$2,$3
bne $1,$0,wrong
sltu $1,$3,$2
bne $1,$4,wrong

lui $2,0x7fff
lui $3,0x8fff
addi $4,$0,0x0001
sltu $1,$2,$3
bne $1,$4,wrong
sltu $1,$3,$2
bne $1,$0,wrong

addi $2,$0,0x0000
addi $4,$0,0x0001
slti $1,$2,0xffff
bne $1,$0,wrong
sltiu $1,$2,0xffff
bne $1,$4,wrong

addi $2,$0,0xffff
addi $4,$0,0x0001
slti $1,$2,0x0000
bne $1,$4,wrong
sltiu $1,$2,0x0000
bne $1,$0,wrong

addi $2,$0,0x0000
addi $4,$0,0x0001
slti $1,$2,0x0fff
bne $1,$4,wrong
sltiu $1,$2,0x0fff
bne $1,$4,wrong

addi $2,$0,0x0fff
slti $1,$2,0x0000
bne $1,$0,wrong
sltiu $1,$2,0x0000
bne $1,$0,wrong

addi $2,$0,0xffff
slti $1,$2,0xffff
bne $1,$0,wrong
sltiu $1,$2,0xffff
bne $1,$0,wrong

addi $2,$0,0x0000
sll $1,$2,1
bne $1,$0,wrong
srl $1,$2,1
bne $1,$0,wrong
sra $1,$2,1
bne $1,$0,wrong

addi $2,$0,0xffff
addi $4,$0,0xfffe
sll $1,$2,1
bne $1,$4,wrong

addi $2,$0,0xffff
lui $4,0x7fff
ori $4,$4,0xffff
srl $1,$2,1
bne $1,$4,wrong

addi $2,$0,0xffff
addi $4,$0,0xffff
sra $1,$2,1
bne $1,$4,wrong

addi $2,$0,0x0000
sll $1,$2,0
bne $1,$0,wrong
srl $1,$2,0
bne $1,$0,wrong
sra $1,$2,0
bne $1,$0,wrong

addi $2,$0,0xffff
addi $4,$0,0xffff
sll $1,$2,0
bne $1,$4,wrong
srl $1,$2,0
bne $1,$4,wrong
sra $1,$2,0
bne $1,$4,wrong

addi $2,$0,0x00005
addi $4,$0,0x000a0
sll $1,$2,5
bne $1,$4,wrong
srl $1,$2,5
bne $1,$0,wrong
sra $1,$2,5
bne $1,$0,wrong

addi $2,$0,0x0000
addi $3,$0,0x0001
srlv $1,$2,$3
bne $1,$0,wrong
srav $1,$2,$3
bne $1,$0,wrong

addi $2,$0,0xffff
addi $3,$0,0x0001
addi $4,$0,0xfffe
sllv $1,$2,$3
bne $1,$4,wrong
addi $4,$0,0xffff
srav $1,$2,$3
bne $1,$4,wrong
lui $4,0x7fff
ori $4,$4,0xffff
srlv $1,$2,$3
bne $1,$4,wrong

addi $2,$0,0x0000
addi $3,$0,0x0000
sllv $1,$2,$3
bne $1,$0,wrong
srav $1,$2,$3
bne $1,$0,wrong
srlv $1,$2,$3
bne $1,$0,wrong

addi $2,$0,0xffff
addi $3,$0,0x0000
addi $4,$0,0xffff
sllv $1,$2,$3
bne $1,$4,wrong
srav $1,$2,$3
bne $1,$4,wrong
srlv $1,$2,$3
bne $1,$4,wrong

addi $2,$0,0x5555
addi $3,$0,5
lui $4,0x000a
ori $4,$4,0xaaa0
sllv $1,$2,$3
bne $1,$4,wrong
srav $1,$2,$3
ori $4,$0,0x02aa
bne $1,$4,wrong
srlv $1,$2,$3
bne $1,$4,wrong

right:
addi $30,$0,0x00e0
sw $30,0($29)
j loop
wrong:
addi $30,$0,0x000f
sw $30,0($29)
loop:
sll $zero,$zero,0
j loop

