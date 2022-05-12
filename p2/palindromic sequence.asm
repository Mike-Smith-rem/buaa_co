.data
char: 		.space 80


.text
	li 			$v0,5			#
	syscall
	move 		$s0,$v0
	li 			$t0,0       		#get the i
in:
	beq 			$t0,$s0,in_end
	nop
	li    		$v0,12 			#get the string
	syscall
	sb			$v0,char($t0)	#only for one bite
	addi			$t0,$t0,1
	j			in
in_end:
	li			$t0,0			#int i = 0
	div			$s1,$s0,2 		#s1 = n/2
cmp:
	bgt			$t0,$s1,cmp_end	#i<=n/2
	nop
	sub			$t1,$s0,1		#t1 for n-1
	sub			$t1,$t1,$t0		#t1 for n-1-i
	lb			$t2,char($t0)
	lb			$t3,char($t1)
	bne			$t2,$t3,print_0
	nop							#a[i]!=a[n-i-1]
	addi			$t0,$t0,1		#i++
	j 			cmp
cmp_end:
	li			$v0,1
	li			$a0,1
	syscall						#print 1
	li			$v0,10
	syscall						#end
print_0:
	li			$v0,1
	li			$a0,0
	syscall						#print 0
	li			$v0,10
	syscall						#end

	
	
	
	
