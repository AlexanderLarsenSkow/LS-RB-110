# Counting Up

# PEDAC

# Problem:
	# Expected Input: integer
	# Expected Output: array 
	
	# Rules:
		# Explicit:
			# Write a method that takes an integer and returns an array of all values between 1 and the input integer
		
		# Implicit:
	
# Examples:
	# sequence(5) == [1, 2, 3, 4, 5]
	# sequence(3) == [1, 2, 3]
	# sequence(1) == [1]

# Data Structure: Arrays

# Algorithm:
	# create an empty array
	# Iterate from 1 up to the number
	# Add each value to the array
	# Return the array
	
# Code:

def sequence(number)
	result = []
	1.upto(number) do |num|
		result << num
	end 
	result
end 

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]