.data
	array_1: .space 28
	array_2: .space 28
	li_break: .asciiz "\n"
	space:   .asciiz " "
	
.macro get(%ans,%num)
	sll			%ans,%num,2
.end_macro

.text
main:
	li			$v0,5
	syscall
	move			$s0,$v0				#store the s0 for n
	li			$a0,0				#a0 for transfer
	jal			fullarray
	li 			$v0,10
	syscall

fullarray:	
	li			$t0,0
	blt 			$a0,$s0,cycle		#start for the second circulation
	nop
	print:
		li			$t0,0
		for:
			beq			$t0,$s0,end_for
			nop
						get($t1,$t0)
			lw			$t2,array_2($t1)
			move			$t3,$a0				#temporary store a0
			move			$a0,$t2
			li			$v0,1
			syscall
			la			$a0,space
			li			$v0,4
			syscall
			move			$a0,$t3				#return a0
			addi			$t0,$t0,1
			j			for
		end_for:
			move			$t3,$a0				#temporary store a0	
			la			$a0,li_break
			li			$v0,4
			syscall
			move			$a0,$t3				#return a0
			
			jr			$ra
	
	
	
	
	
cycle:
	beq			$t0,$s0,end_cycle	#i < n
	nop

	if:
					get($t1,$t0)		
		lw			$t2,array_1($t1)		#t4 = array_1[i]
		bne			$t2,$0,end_if		#if(array_1[i]==0)
		nop
		
		
		addi			$t3,$t0,1			#t3 = i+1
					get($t4,$a0)
		sw			$t3,array_2($t4)		#array_2[index] = i+1
		li			$t5,1
		sw			$t5,array_1($t1)

	
	
#fullarray(index+1)					
		sw			$ra,0($sp)
		subi			$sp,$sp,4
		sw			$a0,0($sp)
		subi			$sp,$sp,4
		sw			$t0,0($sp)
		subi			$sp,$sp,4			#store t0   significant!!
		addi			$a0,$a0,1			#index + 1	
		jal			fullarray
	
		
			
		addi			$sp,$sp,4
		lw			$t0,0($sp)
		addi			$sp,$sp,4
		lw			$a0,0($sp)
		addi			$sp,$sp,4
		lw			$ra,0($sp)
					get($t1,$t0)
		sw			$0,array_1($t1)
		
		
	end_if:
		addi			$t0,$t0,1			#i++
		j			cycle
end_cycle:
	jr			$ra
	
	

	

	
	
	
	
	
	
