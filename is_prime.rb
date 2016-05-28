def is_prime?(n)
	for i in 2..n/2 # starting from 2 until n/2 
		boo = true
		if n % i == 0
			boo = false
			break
		end
	end
	if boo # output true if value is prime
			return true
		else # otherwise output false if value is not prime
			return false
		end
end