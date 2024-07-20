# Convert an Integer to a String

# Understanding the Problem:
	# Expected Input: integer
	# Expected Output: string
	
	# Rules: 
		# No using to_i / to_s 

# Test Cases
	# integer_to_string(4321) == '4321'
	# integer_to_string(0) == '0'
	# integer_to_string(5000) == '5000'

# Data Structures: Hashes and Arrays 

# Algorithm:
	# Helper Method
	# 1. Write a helper method that creates a rules hash
	# 2. Hard code a hash with the integers for keys and the strings for values
	# 3. It should be 0 => '0', 1 => '1' etc.
	
	# Main Method:
	# 1. Create an empty array.
	# 2. Convert the integer to an array of digits and save it to a variable
	# 3. Reverse the array
	# 4. Iterate through the array and through the hash. If the elements in the array equal the keys in the hash,
	# 5. Push the hash values into the empty array.
	# 6. join the empty array elements
	# 7. Return this result.

# Code

INTEGER_TO_STRING_HASH = {
	0 => '0', 
	1 => '1',
	2 => '2',
	3 => '3',
	4 => '4',
	5 => '5',
	6 => '6',
	7 => '7',
	8 => '8',
	9 => '9'
	}

def integer_to_string(integer)
	result = []
	int_array = integer.digits.reverse
	
	int_array.each do |int|
		INTEGER_TO_STRING_HASH.each do |key_int, string_num|
			result << string_num if int == key_int	
		end 
	end
	result.join 
end 	

p integer_to_string(4321)
p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'