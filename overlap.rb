def overlap(set1, set2)

	coord1 = set1[0] # each corner of rectangle 1 and 2 is stored in two different arrays
	coord2 = set1[1] 
	coord3 = set2[0]
	coord4 = set2[1]

	if coord1[0] > coord3[0] && coord1[1] > coord3[1]
		coord3 = set1[0] # flips the stored rectangles if second rectangle input is to the left
		coord4 = set1[1] 
		coord1 = set2[0]
		coord2 = set2[1]		
	end

	if coord2[0] > coord3[0] && coord2[1] > coord3[1] || coord1[0] < coord4[0] && coord1[1] < coord4[1]
		if coord2[0] <= coord3[0] || coord2[1] <= coord3[1] # displays false if no overlap
			return false
		else # else true that there is overlap due to one corner coord passing the other corner coord boundary
			return true
		end
	end
end
