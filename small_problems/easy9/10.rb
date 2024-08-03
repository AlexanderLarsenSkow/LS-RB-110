# Sum of Digits 

# PEDAC

# Problem:
	# Expected Input: integer
	# Expected Output: integer
	
	# Rules:
		# Explicit: 
			# Write a method that takes the sum of the input integer's digits.
		
		# Implicit:
			# a digit is one number in the whole number.
	
# Examples:
	# sum(23) == 5

# Data Structure: Array

# Algorithm:
	# Separate the number into an array of digits
	# Sum the array
	# Return the sum

# Code:

def sum(integer)
	integer.digits.sum
end 

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45