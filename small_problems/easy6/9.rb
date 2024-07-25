# Does my list include this?

# Write a method include? that takes an array and a search value as arguments.
# The method should return true if the value is in the array and false if it is not.

# Understanding the Problem:
	# Expected Input: array, and search value
	# Expected Output: true or false boolean
	
	# Rules:
		# If the value is present, return true
		# if the value isn't present, return false
		
# Examples:
	# include?([1, 2, 3], 3) == true
	# include?([1, 2, 3], 4) == false

# Data Structure: Array 

# Algorithm:
	# 1. Count how many times the element appears in the array.
	# 2. if the count is higher than 0, return true
	# 3. if not, return false.

def include?(array, search_value)
	array.count(search_value) > 0
end 
	
p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

	