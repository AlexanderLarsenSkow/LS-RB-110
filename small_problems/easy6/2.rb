# Delete Vowels 

# Write a method that takes an array of strings and returns a new array of strings with all the vowels (aieou) removed.

# Understanding the Problem:

	# Expected Input: Array of strings
	# Expected Output: Array of strings with no vowels
	
	# Rules:
		# No vowels allowed.

# Examples:
	# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
	# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
	# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
	
# Data Structure: Array and #map

# Algorithm:
	# 1. Transform the array by iterating through every string
	# 2. Split the strings into an array of characters and reject every vowel
	# 3. return this characters array joined together for transformation 
	# 4. Return the transformed array

# Code:

VOWELS = %w(a e i o u A E I O U)

def remove_vowels(array)
	array.map do |string|
		split_strings = string.split('').reject do |char|
			VOWELS.include?(char)
		end
		split_strings.join
	end 
end 
	
	
p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']