# Alphabetic Numbers 

# Write a method that takes an array of integers from 0 to 19 and returns an array sorted based on the english counterpart spelling.

# Understanding the Problem:
	# Expected Input: array of integers
	# Expected Output: array of integers sorted by spelling
	
	# Rules: 
		# Must sort based on English spelling 
		# Must return a sorted array

	# Assumptions:
	# Always dealing with integer values.
	
# Examples:
	# alphabetic_number_sort((0..19).to_a) == [
  # 8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  # 6, 16, 10, 13, 3, 12, 2, 0]
  
# Data Structure:
	# Array/Hash
	
	# Things you have to do: 
		# Teach it the string values of each number
			# useful for hashes 
	# How can I sort based on the values of another collection?
	
# Algorithm:
	# 1. Make a hash constant with the integer objects as keys and strings as values
	# 2. sort_by the values here
	# 3. Invoke Array # values on this result
	# 4. Return the values array
	
# Code

NUMBER_HASH = {
	0 => 'zero',
	1 => 'one',
	2 => 'two',
	3 => 'three',
	4 => 'four',
	5 => 'five',
	6 => 'six',
	7 => 'seven',
	8 => 'eight',
	9 => 'nine',
	10 => 'ten',
	11 => 'eleven',
	12 => 'twelve',
	13 => 'thirteen',
	14 => 'fourteen',
	15 => 'fifteen',
	16 => 'sixteen',
	17 => 'seventeen',
	18 => 'eighteen',
	19 => 'nineteen'
} 


def alphabetic_number_sort(integer_array)
	sorted_arr = NUMBER_HASH.sort_by do |integer, string|
		string
	end 
		sorted_arr.to_h.keys
end 

input_arr = (0..19).to_a 

p alphabetic_number_sort(input_arr) == [8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0]
	
	