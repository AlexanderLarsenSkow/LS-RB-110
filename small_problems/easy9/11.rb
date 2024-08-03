# Odd List

# PEDAC

# Problem:
	# Expected Input: array of integers
	# Expected Output: array of integers
	
	# Rules:
		# Explicit:
			# Write a method that only returns the elements odd positions 
		
		# Implicit:
			# This is not index positions. These are equal to even indexies.
	
# Examples:
	# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]

# Data Structure: Arrays

# Algorithm:
	# Create a variable one_indexed equal to 1 
	# Iterate over the array and select each element if the variable is odd.
	# Add 1 to the variable.

# Code:

def oddities(array) 
	one_index = 1
	result = []
	
	array.each do |element|
		result << element if one_index.odd?
		one_index += 1 
	end 
	result
end 

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]