# Convert a String to a Number

# Write a Method that takes a string of ditis and returns the appropriate number as an integer. 
# Assume all characters are numeric. Don't worry about + or - signs in front of the numbers.

# Understanding the Problem:
	# You have to convert a string of numbers to an actual integer number.
	
	# Expected Input: a string of numbers
	# Expected Output: an integer
	
	# Rules: 
		# You cannot use String #to_i to convert to a new data type. 
	
	# Assumptions
		# Don't have to worry about + or - signs
		# Don't have to worry about non-numeric strings
		

# Test Cases and Examples
	# string_to_integer('4321') == 4321
	# string_to_integer('570') == 570


# Data Structure: potential array with 'split'

# Algorithm: Doin it Manual
	# 1. Create a hash
	# 2. Every key is a string value of a number, 0 - 9
	# 3. Every value is an integer, of the same value.
		# Example: # '0' => 0
	# 4. Iterate through the hash and add the key / value pairs
	# 5. Check the number against the key value pairs
			
			# Mini Algorithm
				# Iterate through the hash key with the coded values
				# Iterate through the hash keys / values
				# Iterate again through the characters of the string
				# if the character is a key, take the value from the hash.
	
	# 6. Return the result.


def string_integer_hash 
	string_numbers = '0123456789'.split('')
	hash = {}
	integer = 0
	
	string_numbers.each do |number|
		hash[number] = integer
		integer += 1
	end 
	hash
end 


#p string_integer_hash

def string_to_integer(str_num)
	result = []
	hash = string_integer_hash
	
	str_num.each_char do |char|
		hash.each do |string, integer|
			result << integer if string == char
		end 
	end 	
	result.inject {|a, i| a * 10 + i } 
end 


p string_to_integer('4321')
p string_to_integer('4321') == 4321
p string_to_integer('570') == 570