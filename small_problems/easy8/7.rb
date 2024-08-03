# Double Char Part Two

# PEDAC

# Problem:
	# Expected Input: String
	# Expected Output: String with some doubled characters
	
	# Rules:
		# Explicit:
			# Write a method that doubles characters
			# Do not double vowel characters
			# Do not double punctuation characters
			# Do not double whitespace characters
		
		# Implicit:
			# can use some regex here
	
# Examples:
	# double_consonants('String') == "SSttrrinngg"

# Data Structure: Arrays

# Algorithm:
	# Create a letters constant array
	# Remove a e i o u into a new array
	# 
	# Split the string into an array 
	# Iterate and transform and multiply the character by 2 if the character is a letter that is not a vowel
	# Return the value joined together

# Code:
LETTERS = ('a'..'z').to_a

VOWELS = ['a', 'e', 'i', 'o', 'u']

CONSONANTS = LETTERS.select do |letter|
	!VOWELS.include?(letter)
end 

def double_consonants(string)
	array = string.split('').map do |char|
		if CONSONANTS.include?(char.downcase)
			char * 2
		else 
			char
		end 
	end
	array.join
end 
	
p double_consonants('String')	
p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""