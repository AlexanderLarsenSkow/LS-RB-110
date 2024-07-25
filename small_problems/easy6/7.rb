# halvsies 

# Write a method that takes an array as an argument, and returns two nested arrays that contain the first half and second half
# of the original array. If the original array contains an odd number of elements the middle element should be placed in the first 
# array.

# Understanding the Problem:
	# Expected Input: One array
	# Expected Output: One array with two nested arrays, made up of the elements in the two halfs of the original array
	
	# Rules:
		# Odd number size arrays place the middle element in the first half.
		# 
		
# Examples:
	# p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]] # true
	
# Data Structures: Arrays 

# Algorithm:
	# Create an empty array
	# Create a second empty array
	# Iterate through the array parameter 
	# If the index is < half of the size of the array, add elements to the first array.
	# If the index is > half of the size of the array, add elements to the second array.
	# Return the arrays nested in a final array 
	
# Code:

def halvsies(array)
	result_arr1 = []
	result_arr2 = []
	index = 0
	
	if array.size.even? 
		size = array.size / 2
	else 
		size = (array.size / 2) + 1
	end 
	
	array.each do |el| 
		if index < size 
			result_arr1 << el 
		else 
			result_arr2 << el 
		end 
		index += 1 
	end 
	
	[result_arr1, result_arr2]
end 

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]] # true
p halvsies([1, 2, 3, 4, 1]) == [[1, 2, 3], [4, 1]] # true
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]] # true
p halvsies([5]) == [[5], []] # true
p halvsies([]) == [[], []] # true	
