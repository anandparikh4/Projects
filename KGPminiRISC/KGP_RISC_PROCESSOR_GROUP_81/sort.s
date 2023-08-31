compi $s0,0
compi $t0,0
compi $t1,0
compi $a0,-9
for_i:
comp $t2,$t0
add $t2,$a0
bltz $t2,exit_fori
compi $t1,0
add $t1,$t0
compi $s0,0
add $s0,$t1
for_j:
comp $t2,$t1
add $t2,$a0
bltz $t2,exit_forj
lw $t2,0($s0)
lw $t3,0($t1)
comp $t4,$t2
add $t4,$t3
bltz $t4,upd_min
addi $t1,1
b for_j
upd_min:
compi $s0,0
add $s0,$t1
addi $t1,1
b for_j
exit_forj:
lw $t2,0($s0)
lw $t3,0($t0)
sw $t2,0($t0)
sw $t3,0($s0)
addi $t0,1
b for_i
exit_fori:
compi $a0,0
L:
b L