def power(m,n)
	p = [] # create empty array
	for i in 1..n # for integer values from 1 until n
		p << m # input value m for number of n times
	end
	sol = p.inject(:*) # multiply all values in array
	puts "#{sol}" # output solution for m to the power of n
end