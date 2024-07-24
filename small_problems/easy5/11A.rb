# Solve Problem 11 without using Integer # digits 

# Algorithm:

	# 1. Make an empty digits array
	# 2. Convert the integer to a string value
	# 3. Iterate through the string and push each number into the digits array
	# 4. Convert each string number to an integer
	# 5. Return the digits array.
	
# Code:

def digit_list(integer)
	digits = []
	string_num = integer.to_s 
	
	string_num.each_char do |num|
		digits << num.to_i
	end 
	digits
end 
	
	
p digit_list(12345) == [1, 2, 3, 4, 5]     # => true
p digit_list(7) == [7]                     # => true
p digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
p digit_list(444) == [4, 4, 4]             # => true	