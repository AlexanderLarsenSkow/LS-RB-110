# Sequence Count

# PEDAC

# Problem:
	# Expected Input: 2 integers 
 	# Expected Output: array of integers
	
	# Rules:
		# Explicit:
			# Write a method that takes 2 integers and return an array from them.
			# Integer 1 is the count. This is the numebr of integers in the returned array
			# Integer 2 is the starting number. All numbers after this number are multiples of it.
			
		# Implicit:
	
# Examples:
	# sequence(5, 1) == [1, 2, 3, 4, 5]
	# sequence(4, -7) == [-7, -14, -21, -28]
	# sequence(3, 0) == [0, 0, 0]
	# sequence(0, 1000000) == []

# Data Structure: Arrays

# Algorithm:
	# Create an empty array
	# Create a multiple variable equal to starting number
	# Put starting_number in the array
	# Add multiple to starting number
	# Add the multiple to the array until the count is reached
	# Return the new array
	
def sequence(count, starting_num)
	result = []
	multiples = starting_num
	
	count.times do |_|
		result << multiples
		multiples += starting_num
	end 
	result
end 


p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
# Code: