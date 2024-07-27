# Multiply All Pairs

# Problem:
	# Expected Input: 2 arrays
	# Expected Output: 1 array with the products of all number in each array
	
	# Rules:
		# Explicit: 
			# Multiply each integer in each array by every integer in the other array.
			# Return the products in a new array value.
		
		# Implicit: 
			# The size of the new array will be the array sizes multiplied together.
			
	# Assumptions: neither array is empty
	
# Examples:
	# multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
	
# Data Structure: Arrays

# Algorithm:
	# Iterate over the first array
	# Inside the iteration for the first array, iterate over the second array 
	# Multiply each value by each value in the outer array
	# Transform the outer array
	# Return this value
	
def multiply_all_pairs(array1, array2)
	result = array1.map do |outer_num|
		array2.map do |inner_num|
			p outer_num * inner_num
		end 
	end 
	result.flatten.sort
end 
	
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) #== [2, 4, 4, 6, 8, 8, 12, 16]
	
	
	