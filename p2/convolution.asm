.data
	array_1:		.space 484
	array_2:		.space 484
	array_3:		.space 484
	space:		.asciiz " "
	li_break:	.asciiz "\n"

.macro get(%ans,%row,%line,%num)
	mul %ans,%row,%num
	add %ans,%ans,%line
	sll %ans,%ans,2
.end_macro

.macro input()
	li 			$v0,5
	syscall
.end_macro


.text
in:
	input()
	move 		$s0,$v0			#get m1 in s0
	input()
	move			$s1,$v0			#get n1 in s1
	input()
	move			$s2,$v0			#get m2 in s2
	input()
	move			$s3,$v0			#get n2 in s3
	
	
	li			$t0,0			#get i in t0,start a
loop1_1:
	beq			$t0,$s0,loop1_1_end
	nop
	li			$t1,0			#get j in t1
loop1_2:
	beq			$t1,$s1,loop1_2_end
	nop
				input()
				get($t2,$t0,$t1,$s1)
								#get a[i][j]
	sw			$v0,array_1($t2)
								#store a[i][j]
	addi			$t1,$t1,1
	j			loop1_2
loop1_2_end:
	addi			$t0,$t0,1
	j			loop1_1
loop1_1_end:

	
	
	
	
	li			$t0,0			#get i in t0,start b
loop2_1:
	beq			$t0,$s2,loop2_1_end
	nop
	li			$t1,0			#get j in t1
loop2_2:
	beq			$t1,$s3,loop2_2_end
	nop
				input()
				get($t2,$t0,$t1,$s3)
								#get a[i][j]
	sw			$v0,array_2($t2)
								#store a[i][j]
	addi			$t1,$t1,1
	j			loop2_2
loop2_2_end:
	addi			$t0,$t0,1
	j			loop2_1
loop2_1_end:


	sub			$t0,$s0,$s2		#get m1-m2
	addi			$t0,$t0,1		#get m1-m2+1
	move			$s4,$t0			#store m1-m2+1 in s4
	sub			$t1,$s1,$s3		#get n1-n2
	addi			$t1,$t1,1		#get n1-n2+1
	move      	$s5,$t1			#store n1-n2+1 in s5
	#start convolution
	li 			$t0,0			#get i
loop3_1:
	beq 			$t0,$s4,loop3_1_end
	nop
	li			$t1,0			#get j
loop3_2:
	beq			$t1,$s5,loop3_2_end		
	nop
	li			$t2,0			#get k
	li 			$t9,0			#get c[i][j]
loop3_3:
	beq			$t2,$s2,loop3_3_end
	nop
	li			$t3,0			#get l
loop3_4:
	beq			$t3,$s3,loop3_4_end
	nop			
	add			$t4,$t0,$t2				#get i+k
	add			$t5,$t1,$t3				#get j+l
				get($t6,$t4,$t5,$s1)		#get a[i+k][j+l]
				get($t7,$t2,$t3,$s3)		#get b[k][l]
	lw			$t4,array_1($t6)
	lw			$t5,array_2($t7)			#take out
	mul			$t8,$t4,$t5
	add			$t9,$t9,$t8
	addi			$t3,$t3,1
	j			loop3_4
loop3_4_end:
	addi			$t2,$t2,1
	j			loop3_3
loop3_3_end:
	move			$a0,$t9					#print c[i][j]
	li			$v0,1
	syscall
	la			$a0,space
	li			$v0,4
	syscall								#print space
	addi			$t1,$t1,1
	j			loop3_2
loop3_2_end:
	la			$a0,li_break
	li			$v0,4
	syscall								#print '\n'
	addi			$t0,$t0,1
	j			loop3_1
loop3_1_end:
	li			$v0,10
	syscall


	
	
		
	
	
	
