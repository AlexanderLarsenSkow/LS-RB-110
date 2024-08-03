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
	# # Create a variable sum equal to 0
	# Transform the integer into a string
	# Separate the string into an array of characters
	# Iterate over the array. Convert each character back to an integer and add that value to sum.
	# Return sum

def sum(integer)	
	sum = 0
	integer.to_s.chars.each do |char|
		sum += char.to_i
	end 
	sum
end 

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45