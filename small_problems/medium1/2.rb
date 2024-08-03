# Rotation Part Two

# PEDAC

# Problem:
	# Expected Input: integer and n digits to be rotated
	# Expected Output: rotated integer value
	
	# Rules:
		# Explicit:
			# Write a method that rotates n digits from the end of the the array
			# The digits rotate to the right
			# if n equals 1, it returns the original integer
			# if n equals 2, it returns the 2 last digits swapped.
		
		# Implicit:
	
# Examples:

# Data Structure: Array

# Algorithm:
	# Take the -number of the input position and take the slice from that spot and the positive number of elements.
	 

# Code:


def rotate_rightmost_digits(digits, number)
	array = digits.digits.reverse
	slice = array.size - number
	array_slice = array[0, slice]
	array_slice + array[-2..]
end 
	
p rotate_rightmost_digits(735291, 1) #== 735291
p rotate_rightmost_digits(735291, 2) #= 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) #== 732915
p rotate_rightmost_digits(735291, 5) #== 752913
p rotate_rightmost_digits(735291, 6) #== 352917