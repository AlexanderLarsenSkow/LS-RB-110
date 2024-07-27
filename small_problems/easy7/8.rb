# Multiply Lists 

# Problem:
	# Expected Input: 2 arrays
	# Expected Output: 1 array with elements in same positions mulitplied together
	
	# Rules
		# Explicit: 
			# Take two arrays and multiply each element in the same index position together. 
			# The product values will be in a new array.
		
		# Implicit:
			
			
	# Assumptions:
		# The arrays have the same number of arguments 
		
# Examples:
	# multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
	
# Data Structure: Arrays

# Algorithm:
	# Create a value index equal to 0
	# Transoform a copy of the first array by multiplying each value by the value of the second array.
	# multiply by value in the second array at that index.
	# Add 1 to the value of index for each iteration.

def multiply_list(array1, array2)
	index = 0
	array1.map do |num|
		product = num * array2[index]
		index += 1
		product
	end 
end 

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
