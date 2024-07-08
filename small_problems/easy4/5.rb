# Write a method that takes a number input
	# The method computes the sum of all the multiples of 3 and 5 between the number input and 1.
	# input = 10 --> 3 + 6 + 9 + 5 + 10 
	
# Understanding the Problem: 
	# Expected Input: integer
	# Expected Output: sum of integers 
	
	# Rules: 
		# - Must use multiples of 3 and 5
		# - Input is greater than 1
		# - Add the multiples together
		
# Examples:
	# multisum(3) == 3 --> 3 
	# multisum(5) == 8 --> 3 + 5
	# multisum(10) == 33 --> 3 + 6 + 9 + 5 + 10
	# multisum(1000) == 234168
	# multisum(1) == 0
		
# Data Structures: 
	# Array to save all the values.
		
# Algorithm: 
	# 1. Create empty array.
	# 2. Initialize variable to reference 3 
	# 3. Initialize variable to reference 5
	# 4. Increment the values by adding themselves to each one until they are greater than the input number.
	# 5. Add each value to the array
	# 6. Add all the numbers in the array together.

	# Mini-Algorithm for 
		# 
	
# Code

def multisum(number)
	result = []
	three = 3 
	five = 5
	
	if number >= three
		loop do 
			break if three > number  
			result << three 
			three += 3 
		end
	end 
	
	if number >= five
		loop do 
			result << five
			five += 5 
			break if five > number
		end
	end 
	
	result.uniq.sum
end 


	
p multisum(3)
p multisum(5)
p multisum(10)
p multisum(9)
p multisum(12)
p multisum(20) # => [3, 6, 9, 12, 15, 18, 5, 10, 20] 

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

p multisum(20) # 3 6 9 12 15 18 5 10 15 20
