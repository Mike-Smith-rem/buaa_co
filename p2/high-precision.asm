.data 
a: .space 4000

.macro get(%ans,%num)
	sll		%ans,%num,2
.end_macro


#s0 = n
#end = t8
#carryin = t2
#sum  = t3
#i =t0,,j=t1
.text
	li		$v0,5
	syscall
	move		$s0,$v0
if_n_0:
	bne		$s0,0,else
	nop
	li		$a0,1
	li		$v0,1
	syscall
	j		for3_end
else:
	li		$t0,1
	sw		$t0,a($0)
	li		$t8,1
	li		$t0,1
for:
	bgt		$t0,$s0,for_end
	nop
	li		$t2,0
	li		$t3,0
	li		$t1,0
for_2:
	blt		$t1,$t8,for_2_context
	nop
	beq		$t2,0,for_2_end
	nop
	
for_2_context:
	get($t4,$t1)
	lw		$t3,a($t4)
	mul		$t3,$t3,$t0
	add		$t3,$t3,$t2
	div		$t2,$t3,10			#get sum/10
	div		$t3,$t3,10
	mfhi		$t3					#get sum%10
	sw		$t3,a($t4)
	addi		$t1,$t1,1
	j		for_2
for_2_end:
	move   	$t8,$t1
	addi		$t0,$t0,1
	j		for
for_end:
	
	
	subi		$t1,$t1,1
	move		$t0,$t1
for3:
	blt		$t0,0,for3_end
	nop
	get($t4,$t0)
	lw		$a0,a($t4)
	li		$v0,1
	syscall
	subi		$t0,$t0,1
	j		for3
for3_end:
	li		$v0,10
	syscall