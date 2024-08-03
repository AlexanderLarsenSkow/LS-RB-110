# How Long are You?

# PEDAC

# Problem:
	# Expected Input: string
	# Expected Output: array of every word + space + word length
	
	# Rules: 
		# Explicit:
			# Write a method that takes a string and returns an array where every element is one of the words in the array
			# On top of this, each element should have a space after the word and the word length after the space.
		
		# Implicit:
			# words are marked by spaces.
	
# Examples:
	# word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

# Data Structure: Arrays

# Algorithm:
	# Split the string into an array of words
	# Iterate through the array and transform it
	# Create a variable length equal to the word length
	# Add a space and the length variable to each element
	# return the new array

# Code:

def word_lengths(string)
	string.split.map do |word|
		"#{word} #{word.length}"
	end
end 

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []