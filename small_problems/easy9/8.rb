# Grocery List

# PEDAC

# Problem:
	# Expected Input: array of fruits with integer for number of fruits
	# Expected Output: new array that has each fruit element the same number as the original integer value
	
	# Rules:
		# Explicit:
			# Write a method that takes a grocery list and remove the integer value.
			# Multiply the string element by integer value.
		
		# Implicit:
	
# Examples:
	# buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  # ["apples", "apples", "apples", "orange", "bananas","bananas"]

# Data Structure: Array

# Algorithm:
	# Create an empty array
	# Iterate over the main array
	# For the total number in the array, add the fruit the same number of times to the new array.
	# return the new array

# Code:

def buy_fruit(nested_array)
	grocery_list = []
	
	nested_array.each do |inner_array|
		inner_array[1].times do |_|
			grocery_list << inner_array[0]
		end 
	end
	grocery_list
end 

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]