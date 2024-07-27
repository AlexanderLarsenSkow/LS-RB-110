# Multiplicative Average

# PEDAC 

# Problem:
	# Expected Input: array of integers
	# Expected Output: float value rounded to 3 decimal places
	
	# Rules:
		# Explicit Requirements:
			# All values must be multiplied together
			# That result is divided by the total number of elements 
			# It then prints that value to the console : "The result is 7.500"
			
		# Implicit Requirements:
			# by prints, the method doesn't have a return value. Its purpose is to print a value to the console.

# Examples:
	# show_multiplicative_average([3, 5])                # => The result is 7.500
	# show_multiplicative_average([6])                   # => The result is 6.000
	# show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
	
# Data Structure: Array

# Algorithm:
	# 1. Create a variable product equal to 1
	# 2. Iterate through the collection and multiply each value by product.
	# 3. Divide by the size of the array
	# 4. round this value to the 3rd decimal place.
	# 5. Print "The result is _____"
	
	def show_multiplicative_average(array)
		product = 1
		array.each do |number|
			product *= number
		end 
		average = (product.to_f / array.size).round(3)
		
		puts format('The reuslt is %.3f', average)
	end 
	
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667	
	
	
	
	
	

