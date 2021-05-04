
	@1
	D=M //copy R1 into D
	@times
	M=D // and now M[times] = R1

	@2
	M=0 //initialize sum to 0
	(LOOP)
	// within the loop, if times = 0, need to break out
	@times
	D=M //d = times
	@END
	D; JEQ // if times = 0, break 

	// if we're still looping, need to decrement times
	// and increment sum
	@1
	D=D-A //d = times - 1
	@times
	M=D // and now, times = times-1

	@2
	D=M
	@0
	D=D+M // d = R0 + SUM
	@2
	M=D //and, now sum = sum+R0

	@LOOP
	0;JMP

	(END)  // and, the infinite loop that ends a hack program
       @END
       0; JMP