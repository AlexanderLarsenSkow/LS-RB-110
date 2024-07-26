# Swap Case

# PEDAC

# Understanding the Problem:
	# Expected Input: String
	# Expected Output: String with cases switched
	
	# Rules
		# Explicit Requirements:
			# Switch every case in the original string to its opposite, lowercase to upcase / upcase to lowercase
			# Don't use swapcase
			# Don't change other characters
		
		# Implicit Requirements:
			# Return a new string
			# Replacing letter cases means switching case

# Examples:
	# "I LOVE YOU" => 'i love you'
	# "THis iS Happening" # => 'thIS Is hAPPENING'
	
# Data Structure: Array with split

# Algorithm:
	# BEFORE METHOD
		# Create a lowercase array
		# Create an uppercase array
	# METHOD START
		# split the string into an array of characters
		# iterate over this array with map
		# if the character exists inside the lowercase array, upcase the character.
		# if the character exists inside the uppercase array, downcase the character.
		# If it exists in neither, return the character.
		# join the array together and return this value.
		
# Code:

UPPERCASE_LETTERS = ('A'..'Z').to_a
LOWERCASE_LETTERS = ('a'..'z').to_a

def swapcase(string)
	result = string.split('').map do |char|
		if UPPERCASE_LETTERS.include?(char)
			char.downcase
		elsif LOWERCASE_LETTERS.include?(char)
			char.upcase
		else 
			char
		end 
	end 
	result.join
end 

p swapcase('PascalCase') == 'pASCALcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'