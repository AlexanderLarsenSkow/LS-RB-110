# Running Totals

# Write a method that takes an array of numbers and returns an array with the same number of elements and each element has the 
# running total from the original array.

# Understanding the Problem:

	# Expected Input: An array of numbers 
	# Expected Output: An array of numbers with a total running up.
	
	# Rules:
		# - Must add two previous values together to get the current element's value

# Examples: 
	# - running_total([1, 2, 3]) --> [1, 3, 6]
	# - running_total([4, 5, 6]) --> [4, 9, 15]
	# - running_total([]) --> []
	
	# Just adding each value to get the values in the new array.
	
# Data Structures: 
	# Working with arrays so can use Array #map or Enumerable #each_with_index
	# each_with_index: 

# Algorithm
	# - Create an empty array
	# - iterate through the input array 
	# - Add the first two values in this point in the iteration together 
	# - Add the summed value to the new array
	# - Repeat until every value has been added to the new array
	# - return your new array

# Code

def running_total(array)
	current_total = 0 
	
	result = array.map do |number|
		current_total += number
		current_total
	end 
	result
end 


p running_total([1, 2, 3])

p running_total([1, 2, 3]) == [1, 3, 6]
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []