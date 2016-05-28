def combinations(array1, array2)
	comb = [] # Creates empty array
	for n in 0..(array1.length - 1) # from first value to last value in the array 1
		for m in 0..(array2.length - 1) # from first value to last value in the array 2
			comb << array1[n] + array2[m] # input combination value into comb array
		end
	end
	puts "#{comb}" # output values
end