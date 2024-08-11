# Rotation Part Three

# PEDAC

# Problem:
	# Expected Input: Integer
	# Expected Output: Maximum Rotated Number
	
	# Rules:
		# Explicit:
			# Write a method that takes the maximum rotation of a number
			# First, rotate the entire integer.
			# Then, rotate the last 5 digits
			# Then, rotate the last 4 digits
			# Then, rotate the last 3 digits
			# Finally, rotate the last 2 digits
		
		# Implicit:
	
# Examples:
	# I don't even know! LOL

# Data Structure:
	# Arrays

# Algorithm:
	# Create a variable digits equal to the size of taking the digits array of the integer.
	# Create a variable with the digits variable as the first argument for the first invocation of the rightmost_digits method
	# - 1 to the digits variable 
	# Pass the variable referencing the first rotation into rightmost_digits again, this time with digits 1 less than before
	# Repeat these steps until digits is equal to 1.

# Code:

def rotate_array(array)
	result = []
	index = 0
	
	array.each do |el|
		if index > 0 
			result << el
		end 
		index += 1	
	end 
	result << array[0]
end 

def rotate_rightmost_digits(number, digits)
	array = number.digits.reverse
	index = array.size - digits
	original_digits = index
	
	slice = array[index, digits]
	rotated_arr = rotate_array(slice)
	
	(array[0, original_digits] += rotated_arr).join.to_i
end 

def max_rotation(integer)
	array = integer.digits.reverse
	digits = array.size
	
	max_rotate = rotate_rightmost_digits(integer, digits)

	loop do 
		break if digits == 1
	
		digits -= 1
		max_rotate = rotate_rightmost_digits(max_rotate, digits)
	end
	
	max_rotate
end 



p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845