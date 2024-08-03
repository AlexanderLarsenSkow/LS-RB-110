# Double Char Part One

# PEDAC

# Problem:
	# Expected Input: string
	# Expected Output: string with doubled characters
	
	# Rules:
		# Explicit:
			# Write a method that takes a string and returns a new string where every character is doubled
		
		# Implicit:
			# multiplying by integers adds that number of characters to a string
	
# Examples:
	# repeater('Hello') == "HHeelllloo"


# Data Structure: Arrays 

# Algorithm:
	# Split the string into an array
	# Iterate and transform the array by multiplying each character by 2 
	# Return the new array joined together

# Code:

def repeater(string)
	string.split('').map {|char| char * 2}.join
end 

p repeater("Hello")
p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
