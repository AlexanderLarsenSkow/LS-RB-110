# Reverse It Part Two

# PEDAC

# Problem:
	# Expected Input: string
	# Expected Output: string with certain words reversed
	
	# Rules:
		# Explicit:
			# Write a method that reversed the character order in the words if there are 5 or more characters in the word.
			# Spaces should only be included with more than one word present.
			# Can be assumed that strings will consist only of letters and spaces.
		
		# Implicit:
			# Reverse order here means that the characters have reversed order, not the words
	
# Examples:
	# puts reverse_words('Professional')          # => lanoisseforP

# Data Structure: Arrays

# Algorithm:
	# Split the string into an array of words. Split by spaces
	# Iterate over the array. If the word has 5 or more characters, reverse its characters.
	# Return this new array joined together.

# Code:

def reverse_words(string)
	array = string.split.map do |word|
		if word.size >= 5 
			word.reverse
		else 
			word
		end 
	end 
	array.join(' ')
end 

p reverse_words('Professional Actors are great')
puts reverse_words('Professional') == 'lanoisseforP'
puts reverse_words('Walk around the block') == 'Walk dnuora the kcolb'
puts reverse_words('Launch School') == 'hcnuaL loohcS'