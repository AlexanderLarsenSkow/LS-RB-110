# Fibonacci Number Location by Length

# Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits
	# specified as an argument. Return the length of the number at the specified digit. 
	# For example, 2 digits is at index 7. The first number that appears is 13.
	
# Understanding the Problem:
	# Expected Input: number of digits in the final fibonacci number here.
	# Expected Output: The index location of the final number.

	# Rules:
		# Adding the two current numbers together = the next number.
		# For exampmle: fib 1 + fib 2 = fib 3.
		# fib 1 and fib 2 both start at 1.
		# Digits Method can help with the digit length.
		
# Examples:
	# find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
	# find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
	# find_fibonacci_index_by_length(10) == 45
	# find_fibonacci_index_by_length(100) == 476
	# find_fibonacci_index_by_length(1000) == 4782
	# find_fibonacci_index_by_length(10000) == 47847	
		
# Data Structure: Arrays

# Algorithm:
	# 1. Set fib1 equal to 1
	# 2. Set fib2 equal to 2
	# 3. Create an empty array
	# 4. Add fib 1 and fib 2 to the array.
	# 5. Add fib 1 to fib 2. Set fib 1 equal to this value.
	# 6. Set fib 2 equal to the new addition.
	# 7. Repeat until this is equal to the digit number...
	# 8. Return the index location of the final value.
	
# Code	

def find_fibonacci_index_by_length(number_of_digits)
	fib1 = 1 
	fib2 = 1 
	result_array = [fib1, fib2]
	
	until number_of_digits == result_array.last.to_s.size
		fib1 += fib2
		result_array << fib1
		
		break if number_of_digits == result_array.last.to_s.size
		
		fib2 += fib1
		result_array << fib2
	end
	result_array.size
end 

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
