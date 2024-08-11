# PEDAC

# Problem:
	# Expected Input: Array
	# Expected Output: Array with rotated elements
	
	# Rules:
		# Explicit:
			# Write a method that rotates the last n digits of an array
			# If it rotates 1 digit, it returns the same array
			# If it rotates 2 digits, it rotates the last 2 elements in the array
			# If it rotates 3 digits, it rotates the last 3 elements in the array.
			# The rotation always happens 1 to the left. 
		
		# Implicit:
			# Can take a slice from the array and then rotate that.
	
# Examples:
	# rotate([735291], 5) => [752913]
	# rotate([735291], 3) => [735912]
	
# Data Structure:
	# Arrays

# Algorithm:
	# Convert the number to an array of digits reversed
	# Take a slice from the array based on the n digits variable
	# It should be index position array size - digits with the number of digits as n
	# Plug this into the rotate array method from last challenge
	# Take the slice of the first array before the index of the first slice
	# Add the rotated_slice into this slice. 
	# Return the array.

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

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917