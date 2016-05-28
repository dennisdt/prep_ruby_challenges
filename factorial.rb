def factorial(n)
	fact=[] # create empty array
	for i in 1..n # starting value from 1 increasing by 1 integer until reaching n
		fact << i # input current i value into fact array
	end
	sol = fact.inject(:*) # multiplies all values in array
	puts "#{sol}" # outputs factorial solution
end