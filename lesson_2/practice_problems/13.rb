# Reorder the subarrays. It should have the same structure (hint hint: map) but each subarr should be ordered 
		# by the odd numbers inside them.

arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

result = arr.sort_by do |array| 
	array.select do |num|
		num.odd?	
	end 
end 

p result 

p result == [[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]]