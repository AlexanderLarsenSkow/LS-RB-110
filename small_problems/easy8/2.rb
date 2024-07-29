# Leading Substrings

# Problem:
	# Expected Input: string
	# Expected Output: array of all substrings starting from the lead character
	
	# Rules
		# Explicit: 
			# Write a method that returns an array of substrings starting from the first character
			# Every substring element adds 1 more character to the substring
		
		# Implicit:
			# A substring is a slice of a string
			
# Examples:
	# leading_substrings('abc') == ['a', 'ab', 'abc']
	# leading_substrings('a') == ['a']
	# leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# Data Structure: 
	# Arrays for sure.

# Algorithm:
	# Create a variable slice equal to 1
	# Create an empty array
	# Iterate through the array and take a slice from the string on each iteration
		# The slice should always start at 0 but should add 1 more char to the element on each iteration
	# Push these values into the empty array
	# Return the new array

# Code:

# Take 1
	# Good solution but maybe a bit misleading since it doesn't actually use the characters in the string.

def leading_substrings(string)
	slice = 1
	result = []
	
	string.each_char do |_|
		result << string[0, slice]
		slice += 1
	end 
	result
end 

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# Take Two
	# This solution is more self-explanatory and does what you might expect.

def leading_substrings2(string)
	result = []
	
	1.upto(string.size) do |count|
		result << string[0, count]
	end 
	result
end 

p leading_substrings2('abc') == ['a', 'ab', 'abc']
p leading_substrings2('a') == ['a']
p leading_substrings2('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']