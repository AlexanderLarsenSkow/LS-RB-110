# List of Digits 

# Write a method that takes one argument, a positive integer, and returns a list of digits in the number.

# Understanding the Problem:
	# Expected Input: Positive integers
	# Expected Output: array of integer digits
	
	# Rules:
		# none
		
	# Assumptions:
		# The integers are positive
		
# Examples
	# => puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
	# => puts digit_list(7) == [7]                     # => true
	# => puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
	# => puts digit_list(444) == [4, 4, 4]             # => true
	
# Data Structure: Arrays

# Algorithm:
	# 1. Convert the digits in the integer to an array
	# 2. Reverse the array
	# 3. Return this value.
	
def digit_list(integer)
	integer.digits.reverse
end 

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true