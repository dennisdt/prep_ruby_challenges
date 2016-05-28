def counting_game
	puts "How many players?" # obtains number of players
	players = gets.to_i

	puts "What number to count up to?" # obtains number to count up to
	numcount = gets.to_i

	count = 1 # start count at 1
	pindex = 1 # start player index at 1
	boo = true # true boolean means forward/ false means reverse

	while count != numcount # run the loop while count does not equal final number

		if count % 7 == 0 # if divisible by 7, reverse direction. if already reverse, switch back
			if boo
			boo = false
			else 
			boo = true
			end
		end

		if count % 11 == 0 # if divisible by 11 then
			if boo
				pindex += 1	# skip next person moving forward
			else
				pindex -= 1 # skip next person moving backwards
			end
		end

		if boo # if moving forward, start the next loop with the next person
			pindex += 1
		else # if moving backwards, start next loop with the next person in other direction
			pindex -= 1
		end

		if pindex >= (players + 1) # if player number is greater than total players, start at player 1
			pindex = 1
		elsif pindex <= 0 # if player number is less than total players, start at last player
			pindex = players
		end

		count += 1 # increase next count
	end

	if players == 1 # outputs the player who says the final number
		puts "Person 1 says the number #{numcount}."
	else
		puts "Person #{pindex} says the number #{count}."
	end
end