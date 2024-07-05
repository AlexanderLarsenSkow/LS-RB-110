# Build a method that takes an array of integers and an integer value arguments and multiply all the values in the array
# by the integer argument.

# Understanding the Problem:
	# Rules: 
		# - two inputs: array and integer.
		# - Must multiply every value.
	
	# Expected Input: array, integer
	# Expected Output: new array with multiplied values
	
# Examples: 
	# - multiply([1,2], 4) # => [4, 8]
	# - multiply([3, 6, 9], 3) # => [9, 18, 27]
	
# Data Structures: Arrays

# Algorithm:
	# 1. Create an empty array 
	# 2. Create index variable to iterate through array
	# 3. Multiply every value in the array by the number input
	# 4. Repeat until every number has been multiplied.
	# 5. Return the new array.
	
# Code	

def multiply(array, number)
	numbers_array = []
	index = 0
	
	loop do
		break if index == array.size
		numbers_array << array[index] * number
		index += 1
	end
	numbers_array
end 

p multiply([1,2], 4) == [4, 8]
p multiply([3, 6, 9], 3) == [9, 18, 27]
p multiply([5, 10, 15, 20], 5) == [25, 50, 75, 100]	