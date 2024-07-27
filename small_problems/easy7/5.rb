# Staggered Caps Part 1 

# PEDAC

# Understanding the Problem: 
	# Expected Input: String
	# Expected Output: transformed string
	
	# Rules:
		# Explicit Requirements:
			# Given a string, return a new string with every other letter capitalized, with the alternating letters between them
			# lowercase.
			# Don't change non-letter characters, but they count as characters 
			
		# Implicit Requirements:
			# First letter is always uppercase.
			
# Examples:
	# staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
	# staggered_case('ALL_CAPS') == 'AlL_CaPs'
	# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
	
# Data Structure: Array and split 

# Algorithm:
	# Create an empty array
	# split the input string into an array of characters
	# Iterate through this value and add chars upcased to the array if the index is even.
	# If the index is odd, add the value downcased.
	# return this new array joined together.

# Code:

def staggered_case(string)
	result = []
	string.split('').each_with_index do |char, index|
		if index.even?
			result << char.upcase
		else 
			result << char.downcase
		end 
	end 
	result.join
end 

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

	