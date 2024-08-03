# Rotation Part One 

# PEDAC

# Problem:
	# Expected Input: array
	# Expected Output: rotated array
	
	# Rules:
		# Explicit:
			# Write a method that rotates the first element to the end of the array. Every element should move left.
			# Don't modify the original array.
		
		# Implicit:
			# Rotating means moving all elements over.
	
# Examples:
	# rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']

# Data Structure: Array

# Algorithm:
	# Create index variable equal to 1
	# Create an empty array
	# Iterate over the array and add the element from the first index position.
	# Add 1 to the index variable. 
	# Repeat until The index variable is equal to the size of the input array.
	# After iterating, add the first element from the input array to the new array.
	# Return the new array

# Code:

def rotate_array(array)
	current_index = 1
	rotated_array = []
	
	array.each do |_|
		break if current_index == array.size
		rotated_array << array[current_index]
		current_index += 1
	end 
	rotated_array << array.first
end 

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true