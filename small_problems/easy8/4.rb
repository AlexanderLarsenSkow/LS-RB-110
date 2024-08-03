# Palindromic Substrings

# PEDAC

# Problem:
	# Expected Input: string
	# Expected Output: array of palindromic substrings
	
	# Rules:
		# Explicit: 
			# Write a method that returns every palindromic substring in a new array. 
			# Duplicate palindromes should be included multiple times.
		
		# Implicit:
			# A palindrome is a word that is the same as it is reversed.
	
	
# Examples:
		# palindromes('abcd') == []
		# palindromes('madam') == ['madam', 'ada']

# Data Structure: Arrays

# Algorithm:
	# Invoke the substrings method from the previous exercise and assign this value to a variable
	# Select all string values from this array that are equal to themselves in reverse and are greater than 1 character in length
	# Return the selections in a new array

# Code:

def make_substrings(index, count_start, string)
	result = []
	count = 1
	
	count_start.upto(string.size) do |_|
		result << string[index, count]
		count += 1
	end 
	result
end 

def substrings(string)
	result = []
	index = 0
	count_start = 1
	
	1.upto(string.size) do |count|
		result += make_substrings(index, count_start, string)
		index += 1
		count_start += 1
	end
	result
end 

def palindromes(string)
	substrings(string).select do |substr|
		substr == substr.reverse && substr.size > 1 
	end 
end 

p palindromes('madam')

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]