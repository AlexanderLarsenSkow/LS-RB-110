# The End is Near but Not Here

# PEDAC

# Problem:
	# Expected Input: string
	# Expected Output: string
	
	# Rules:
		# Explicit: 
			# Return the second to last word in a given string
			# 
		
		# Implicit:
			# A word is defined by consecutive characters
			# Words are separated by spaces.
		
# Examples:
	# penultimate('last word') == 'last'
	# penultimate('Launch School is great!') == 'is'

# Data Structure: Array, split by words

# Algorithm:
	# Create a variable result equal to an empty string
	# Split the Array by word
	# Return the second to last word in the array.
	 
def penultimate(string)
	array = string.split
	array[-2]
end 

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
