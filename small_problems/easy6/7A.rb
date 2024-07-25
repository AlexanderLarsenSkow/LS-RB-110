# Halvies Further Explorations and Refactoring

# Algorithm: 
	# 1. Create an empty nested array 
	
	def halvsies(array)
		result_arr = [[], []]
		index = 0
		
		if array.size.even?
			half_size = array.size / 2 
		else 
			half_size = array.size / 2 + 1
		end 
		
		array.each do |el|
			case 
			when index < half_size 
				result_arr[0] << el 
			else 
				result_arr[1] << el 
			end
			index += 1 
		end
		result_arr
	end 

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]] # true
p halvsies([1, 2, 3, 4, 1]) == [[1, 2, 3], [4, 1]] # true
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]] # true
p halvsies([5]) == [[5], []] # true
p halvsies([]) == [[], []] # true