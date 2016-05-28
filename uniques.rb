def uniques(array)
	uniq = [] # create empty array
	uniq << array[0] # input first value of array into new array
	for i in 0..(array.length - 1) # looping through all values in first array
		boo = true # make boolean
		for n in 0..(uniq.length - 1) # checks for duplicates
			if uniq[n] == array[i] # boolean becomes false if duplicate is found
				boo = false
			end
		end
		if boo # insert array value if boolean is still true
			uniq << array[i]
		end
	end
	puts "#{uniq}" # outputs array containing unique values
end