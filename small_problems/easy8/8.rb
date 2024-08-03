# Reverse It Part One

# PEDAC

# Problem:
	# Expected Input: string
	# Expected Output: reversed string
	
	# Rules:
		# Explicit: 
			# Write a method where you reverse the order of the words in a string
		
		# Implicit:
			# A word is defined by groupings of characters bounded by spaces
	
# Examples:
	# reverse_sentence('Hello World') == 'World Hello'

# Data Structure: Arrays

# Algorithm:
	# Split the string into an array. Split by spaces
	# Reverse the array
	# Return the array joined together
	
# Code:

def reverse_sentence(string)
	string.split.reverse.join(' ')
end 

p reverse_sentence('Hello World')

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''