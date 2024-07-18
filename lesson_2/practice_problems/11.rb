# Use select / reject to return a new array identical in structure but that only has the integers that are multiples of 3. 

arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

result = arr.map do |array|
	array.select do |num|
		num % 3 == 0
	end 
end 


p result 
p result == [[], [3, 12], [9], [15]]