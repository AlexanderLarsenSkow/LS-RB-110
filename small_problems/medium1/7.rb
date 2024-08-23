# Word to Digit

# PEDAC

# Problem:
	# Expected Input: String with number strings like "four", "three"
	# Expected Output: String with numbers changed to "4", "3", etc

	# Rules:
		# Explicit:
			# Write a method that changes each number string value to the digit string value

		# Implicit:
			# Substrings

# Examples:
	# "four" => "4"
	# "Five" => '5'

# Data Structure:
	# Hash, Array

# Algorithm:
	# Build a hash CONSTANT with "one" => "1", "two" => '2', etc

	# METHOD START
		# Split the input string into an array of words
		# Iterate through the string
		# Iterate through the CONSTANT
		# If the word in the string matches the key in the hash, replace the word with the value.
		# Return the string joined together.

# Need to account for irregularities in the number strings. For example, a period can stop us from getting the word.
# Probably need to build a substring method of some kind and call that in the block in the main method.

# How can I account for this edge case? If there's an extra character on the

# build substrings
	# Create an empty array
	# Set index equal to 0
	# Set slice equal to 1
	# Manually iterate through the string
	# Add each string slice to the empty array
	# Increase the slice by 1
	# When the slice is at the size of the array
	# reset the value of slice to 1 and add 1 to index
	# Break when index equals the size of the array
	# Return the array

# Now I don't have the period! Fuck.
# This edge case is gonna kill me.
# SO we have to the add the number but leave any punctuation.

# Ok, no problem. The issue is I'm taking only part of the word.
# I need to take the entire word, so don't take from the NUMBER_STRINGS,
# build a new method that returns the largest string from the array returned
# by build_substrings :)

# Expected Input: Array of substrings
# Expected Output: Replaced

# Just needed to use the sub method.

# Code:

NUMBER_STRINGS = {"one" => '1',
	"two" => '2',
	"three" => '3',
	"four" => '4',
	'five' => '5',
	'six' => '6',
	'seven' => '7',
	'eight' => '8',
	'nine' => '9'
}
require 'pry-byebug'

def build_substrings(string)
	result = []
	index = 0
	slice = 1

	while index <= string.size
		result << string[index, slice] unless string[index, slice] == ''
		slice += 1
		if slice == string.size + 1
			slice = 1
			index += 1
		end
	end
	result.uniq
end

def word_to_digit(string)
	array = string.split

	array.each_with_index do |word, index|
		substrings = build_substrings(word)
		NUMBER_STRINGS.each_pair do |number, digit|
			array[index] = word.sub(number, digit) if substrings.include?(number)
		end
	end
	array.join(' ')
end


string = 'Please call me at five five five one two three four. Thanks.'
p word_to_digit(string) == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

