# Name Swapping

# PEDAC

# Problem:
	# Expected Input: string with full name and space between first and last name
	# Expected Output: string with comma and space between first and last name
	
	# Rules:
		# Explicit:
			# Write a method that places a comma between a first and last name and reverses the order.
		
		# Implicit:
	
# Examples:
	# swap_name('Joe Roberts') == 'Roberts, Joe'
	
# Data Structure: Arrays

# Algorithm:
	# Split the string by words/names
	# Reverse the order
	# Add a comma to the first element
	# Join the elements by space

# Code:

def swap_name(name)
	name_array = name.split.reverse
	name_array[0] += ','
	name_array.join(' ')
end 

p swap_name('Joe Roberts') == 'Roberts, Joe'


