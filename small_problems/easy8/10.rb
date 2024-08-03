# Array Average 

# PEDAC

# Problem:
	# Expected Input: array of integers
	# Expected Output: integer (avegage)
	
	# Rules:
		# Explicit:
			# Write a method that returns the average of all the integers in an array.
			# All the numbers will be positive and greater than 0.
		
		# Implicit:
			# An average is calculated by adding the numbers and divding by how many there are.
	
# Examples:
	# puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
	# puts average([1, 5, 87, 45, 8, 8]) == 25
	# puts average([9, 47, 23, 95, 16, 52]) == 40

# Data Structure: Arrays

# Algorithm:
	# Create a variable called sum
	# Create a variable called average
	# Iterate over the array
	# add every number to sum
	# average is equal to sum divided by the size of the array
	# Return the average
	
# Code:

def average(array)
	average = 0
	sum = 0
	
	array.each do |num|
		sum += num
		average = sum / array.size
	end 
	average
end 

p average([3, 9])

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

