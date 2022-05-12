.data 
matrix_1:	.space 256      #
matrix_2:	.space 256      #
matrix_3:	.space 256      #
space:      	.asciiz " "     #
li_break:	.asciiz "\n"    #


.macro get(%ans,%row,%array,%num)
	mul %ans,%row,%num
	add %ans,%ans,%array
	sll %ans,%ans,2
.end_macro


.text
	li $v0,5
	syscall
	move $s0,$v0  #get the order in s0
	li $t0,0      #get the i
array1_1:         #the first matrix
	beq	$t0,$s0,array1_1_end
	nop
	li $t1,0                    #get the j
array1_2:	
	beq $t1,$s0,array1_2_end  
	nop         
	li $v0,5                       
	syscall
	get($t2,$t0,$t1,$s0)  		#get the subscript
	sw $v0,matrix_1($t2)  		#store the data
	addi $t1,$t1,1
	j array1_2
array1_2_end:
	addi $t0,$t0,1
	j array1_1
array1_1_end:
	
	
	li $t0,0      #get the i
array2_1:         #the second matrix
	beq $t0,$s0,array2_1_end
	nop
	li $t1,0                    #get the j
array2_2:	
	beq $t1,$s0,array2_2_end  
	nop         
	li $v0,5                       
	syscall
	get($t2,$t0,$t1,$s0)  #get the subscript
	sw $v0,matrix_2($t2)  #store the data
	addi $t1,$t1,1
	j array2_2
array2_2_end:
	addi $t0,$t0,1
	j array_1
array2_1_end:

	
	li $t0,0      #get the i
array3_1:         #the second matrix
	beq $t0,$s0,array3_1_end
	nop
	li $t1,0        #get the j
array3_2:	
	beq $t1,$s0,array3_2_end  
	nop      
	li $t9,0       #the number for c[i][j]   
	li $t2,0       #get the k
array3_3:
	beq $t2,$s0,array3_3_end
	nop
	get($t4,$t0,$t2,$s0)   #get the a[i][k]
	get($t5,$t2,$t1,$s0)   #get the b[k][j]
	lw $t6,matrix_1($t4)   #get number of a[i][k] in t6
	lw $t7,matrix_2($t5)   #get number of b[k][j] in t7
	mul $t8,$t6,$t7        #get the multipler in t8
	add $t9,$t9,$t8        #get the sum in t9
	addi $t2,$t2,1
	j array3_3
array3_3_end:
	get($t4,$t0,$t1,$s0)   #get the c[i][j] in t4
	sw $t9,matrix_3($t4)   #store the c[i][j]
	addi $t1,$t1,1
	j array3_2
array3_2_end:
	addi $t0,$t0,1
	j array3_1
array3_1_end:

	li $t0,0
out_1:
	beq $t0,$s0,out_1_end
	nop
	li $t1,0
out_2:
	beq $t1,$s0,out_2_end
	nop
	get($t3,$t0,$t1,$s0)   #get the c[i][j] in t3
	lw $a0,matrix_3($t3)
	li $v0,1
	syscall
	la $a0,space
	li $v0,4
	syscall
	addi $t1,$t1,1
	j out_2
out_2_end:
	la $a0,li_break
	li $v0,4
	syscall
	addi $t0,$t0,1
	j out_1
out_1_end:
	li $v0,10
	syscall
	

	


	
	
	
	
	 
 