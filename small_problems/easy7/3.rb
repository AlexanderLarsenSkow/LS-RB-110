# Capitalize Words

# PEDAC 

# Understanding the Problem
	# Expected Input:
	# Expected Output: 
	
	# Rules:
		# Explicit Requirements:
			# Write a method that takes a single string argument and returns the original string value with every word capitalized.
			# All other characters are lowercase
			
		# Implicit Requirements:
			# non blank characters count as words
			# Every word is defined by a space between it and the next group of characters.
			
# Examples:
	# "i love you" => "I Love You"
	# "THIS IS A BAD DAY" => "This Is A Bad Day"
	
# Data Structure: Split the string by spaces into an array
	
# Algorithm:
	# Create an empty array
	# Split the input string into an array of words
	# Iterate over this array
	# Add each word capitalized to the empty string
	# Return the array joined together
	
# Code:

def word_cap(string)
	result = []
	string.split(' ').each do |word|
		word[0] = word[0].upcase
		result << word
	end 
	result.join(' ')
end 
	
p word_cap('four score and seven') #== 'Four Score And Seven'
p word_cap('the javaScript language') #== 'The Javascript Language'
p word_cap('this is a "quoted" word') #== 'This Is A "quoted" Word'
	
string_ex = 'mutate me?'

p word_cap(string_ex) # => "Mutate Me?"
p string_ex # => 'mutate me?'
		
	