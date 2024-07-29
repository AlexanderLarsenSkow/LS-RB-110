# Sum of Sums 

# Problem:
	# Expected Input: Array of numbers
	# Expected Output: Integer
	
	# Rules:
		# Explicit: 
			# Write a method that takes the sum of all the sums in an array.
			# Add the first two integers together, then add the first 3, and so on.
		
		# Implicit:
			# The method will return a single integer value.
		
		
# Examples:
	# sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
	# sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
	# sum_of_sums([4]) == 4
	# sum_of_sums([1, 2, 3, 4, 5]) == 35

# Data Structure
	# Arrays

# Algorithm:
	# Create a variable slice equal to 1
	# Create an empty array
	# ITERATE
	# Iterate through the input array 
	# Take a slice of each piece of the array and push into the empty array
	# Add 1 to slice with each iteration
	# FINAL METHOD:
		# Create sum variable equal to 0
		# Iterate through the array of arrays and add the sum of each array to sum
		# Return this value.

# Code:

def array_slices(array)
	slice = 1
	result = []
	
	array.each_with_index do |_, index|
		index = 0
		result << array[index, slice]
		slice += 1
	end 
	result
end 

def sum_of_sums(array)
	nested_arr = array_slices(array)
	sum = 0
	
	nested_arr.each do |inner_arr|
		sum += inner_arr.sum
	end 
	sum
end	
	
p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35	

