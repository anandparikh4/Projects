b L0
fib:
compi $t0,0
add $t0,$a0
bz $t0,ret_0
addi $t0,-1
bz $t0,ret_1
sw $a0,0($sp)
sw $ra,1($sp)
addi $sp,3
addi $a0,-1
bl fib
lw $a0,-3($sp)
sw $v0,-1($sp)
addi $a0,-2
bl fib
lw $t0,-1($sp)
add $v0,$t0
lw $ra,-2($sp)
addi $sp,-3
br $ra
ret_0:
compi $v0,0
br $ra
ret_1:
compi $v0,0
addi $v0,1
br $ra
L0:
compi $a0,0
compi $sp,0
addi $sp,1
addi $a0,12
bl fib
compi $sp,0
sw $v0,0($sp)
addi $v0,0
L:
b L