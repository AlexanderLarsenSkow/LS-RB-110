# Take an array of integers and multiply each number at an odd index by 2.

# Understanding the Problem: 
	# Expected Input: array
	# Expected Output: Transformed array

# Examples: my_numbers = [1, 4, 3, 7, 2, 6] # => [8, 14, 12]

# Data Structure: Array, obviously

# Algorithm: 
	# 1. Create an empty array object.
	# 2. Assign local var index to reference 0. Iterate through original array later.
	# 3. If the index for the original array is odd, then multiply that number by 2.
	# 4. Add the multiplied value to the new array.
	# 5. If even, add the value to the array unchanged.
	# 6. Repeat until every value has been iterated through.
	# 7. Return the new array.
	
	# Be careful with assumptions! My example above assumes that the new array doesn't want to keep the values at the even
	# indices. However, the final array must have all the values. The only change is that the values at odd indices are multiplied
	# 2.
	
	# This is an example where spending more time understanding the problem will benefit your problem solving.
	
	my_numbers = [1, 4, 3, 7, 2, 6]

	def multiply_the_odds(array)
		numbers = []
		index = 0
		
		loop do 
			if index.odd?
				numbers << array[index] * 2
			else 
				numbers << array[index]
			end
			
			index += 1
			break if index == array.size
		end 
		numbers
	end
	
	p multiply_the_odds(my_numbers)
	
	p multiply_the_odds(my_numbers) == [1, 8, 3, 14, 2, 12]
	p multiply_the_odds([1, 2, 3, 4, 5]) == [1, 4, 3, 8, 5]
	p multiply_the_odds([15, 12, 4, 7, 18, 100]) == [15, 24, 4, 14, 18, 200]