.data
symbol: .space 200
array: .space 200

.macro scanf()
	li		$v0,5
	syscall
.end_macro

.macro store()
	sw		$ra,0($sp)
	subi		$sp,$sp,4
	sw		$t8,0($sp)
	subi		$sp,$sp,4
	sw		$t9,0($sp)
	subi		$sp,$sp,4
.end_macro

.macro take()
	addi		$sp,$sp,4
	lw		$t9,0($sp)
	addi		$sp,$sp,4
	lw		$t8,0($sp)
	addi		$sp,$sp,4
	lw		$ra,0($sp)
.end_macro
	
.macro get(%ans,%i,%j,%m)
	mul		%ans,%i,%m
	add		%ans,%ans,%j
	sll		%ans,%ans,2
.end_macro

.macro check(%row,%column)
	get($t5,%row,%column,$s2)
	lw		$t4,symbol($t5)
	lw		$t3,array($t5)
	beq		$t4,1,print0
	nop
	beq		$t3,1,print0
	nop
print1:
	li		$a1,1
	j		print0_end
print1_end:
print0:
	li		$a1,0
print0_end:
.end_macro

#s0 = ans
#s1 = m
#s2 = n
#s3 = m1-1
#s4 = n1-1
#s5 = m0-1
#s6 = n0-1
#t8 = row
#t9 = column
#a1 = check
.text
main:
	scanf()
	move 	$s1,$v0
	scanf()
	move 	$s2,$v0
	li		$t0,0
for1_main:
	beq		$t0,$s1,for1_main_end
	nop
	li		$t1,0
for2_main:
	beq		$t1,$s2,for2_main_end
	nop
	scanf()
	get($t3,$t0,$t1,$s2)
	sw		$v0,array($t3)
	addi		$t1,$t1,1
	j		for2_main
for2_main_end:
	addi		$t0,$t0,1
	j		for1_main
for1_main_end:
	scanf()
	move   	$s3,$v0
	subi		$s3,$s3,1
	scanf()
	move		$s4,$v0
	subi		$s4,$s4,1
	scanf()
	move		$s5,$v0
	subi		$s5,$s5,1
	scanf()
	move  	$s6,$v0
	subi		$s6,$s6,1
	
	move		$t8,$s3
	move		$t9,$s4
	jal		DFS	
			
	li		$v0,1
	move    $a0,$s0
	syscall
	li		$v0,10
	syscall
	
DFS:
if_out:
	bne		$t8,$s5,if_out_end
	nop
	bne		$t9,$s6,if_out_end
	nop
	addi		$s0,$s0,1
	jr		$ra
if_out_end:
	get($t1,$t8,$t9,$s2)		
	li		$t2,1
	sw		$t2,symbol($t1)

if1_DFS:
	beq		$t9,0,if1_DFS_end
	nop
	move		$t6,$t8				#row
	subi		$t7,$t9,1			#column - 1
	check($t6,$t7)
	bne		$a1,1,if1_DFS_end	#if(check==0)
	nop
	
	store()
	subi		$t9,$t9,1
	jal		DFS
	
	take()
	
if1_DFS_end:
if2_DFS:
	subi		$t3,$s2,1
	bge		$t9,$t3,if2_DFS_end
	nop
	move		$t6,$t8
	addi		$t7,$t9,1
	check($t6,$t7)
	bne		$a1,1,if2_DFS_end
	nop
	
	store()
	addi		$t9,$t9,1
	jal		DFS
	
	take()
if2_DFS_end:
if3_DFS:
	beq		$t8,0,if3_DFS_end
	nop
	move		$t7,$t9
	subi		$t6,$t8,1
	check($t6,$t7)
	bne		$a1,1,if3_DFS_end
	nop
	
	store()
	subi		$t8,$t8,1
	jal		DFS
	
	take()
if3_DFS_end:
if4_DFS:
	subi		$t3,$s1,1
	bge		$t8,$t3,if4_DFS_end
	nop
	move		$t7,$t9
	addi		$t6,$t8,1
	check($t6,$t7)
	bne		$a1,1,if4_DFS_end
	nop
	
	store()
	addi		$t8,$t8,1
	jal		DFS
	
	take()
if4_DFS_end:

	get($t1,$t8,$t9,$s2)		
	li		$t2,0
	sw		$t2,symbol($t1)
	jr		$ra

		
	
	


	
	
	