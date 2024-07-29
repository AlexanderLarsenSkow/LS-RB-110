# All Substrings

# PEDAC

# Problem:
	# Expected Input: string
	# Expected Output: array of all substrings
	
	# Rules:
		# Explicit:
			# Write a method that returns all the substrings of a given string.
			# Should be ordered by where the string begins: it starts with the first character.
		
		# Implicit:
			# a substring is a slice of the main string

# Examples:

=begin
	substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
=end 

# Data Structure: Arrays

# Algorithm: 
	# Adjust the method to take a starting_integer that changes with a starting_integer
	# Set starting_integer equal to 0
	# Invoke the substring method with 0 and the string as arguments
	# add 1 to the starting_integer until it's greater than the string.size

# Code:

def make_substrings(starting_integer, string)
	result = []
	
	1.upto(string.size) do |count|
		result << string[starting_integer, count]
	end 
	result
end 

def substrings(string)
	result = []
	0.upto(string.size) do |count|
		result += make_substrings(count, string)
	end 
	result.delete(result.last)
	result.uniq
end 

p substrings('abcde')
p substrings('abcde')  == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]