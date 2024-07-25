# Using each_with_index 

def halvsies(array)
	result = [[], []]
	
	if array.size.even?
		half_size = array.size / 2 
	else 
		half_size = array.size / 2 + 1
	end 
	
	array.each_with_index do |el, index|
		if index < half_size 
			result[0] << el 
		else 
			result[1] << el 
		end 
	end 
	result
end 
	
p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]] # true
p halvsies([1, 2, 3, 4, 1]) == [[1, 2, 3], [4, 1]] # true
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]] # true
p halvsies([5]) == [[5], []] # true
p halvsies([]) == [[], []] # true