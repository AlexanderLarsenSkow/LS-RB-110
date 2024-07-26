# Combine Two Lists 

# Understanding the Problem:

	# Expected Input: two arrays 
	# Expected Output: one combined array
	
	# Rules
		# Explicit Requirements:
			# Given 2 arrays, combine the elements in each to form one array.
			# Each element must appear in the new array in an alternate order.
			
		# Implicit Requirements:
			# ?
			
	# Examples:
		# interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
		
	# Data Structure: 
		# Arrays 
		
	# Algorithm:
		# 1. Create an empty array 
		# 2. Iterate over both of the arrays 
		# 3. Add each element to the new array alternately.
		# 4. Return the new array
		
	# Code:
	
	def interleave(array1, array2)
		result = []
		
		array1.each_with_index do |element, index|
			result << element 
			result << array2[index]
		end 
		result
	end 
		
	p interleave([1, 2, 3], ['a', 'b', 'c']) #== [1, 'a', 2, 'b', 3, 'c']
	
	
	
	
	
	
	
	
	
	