# How Many

# PEDAC

# Problem:
	# Expected Input: Array
	# Expected Output: Hash with string keys and integer values
	
	# Rules:
		# Explicit: 
			# Write a method that counts how many times each element occurs in an array
			# Each element should be a key in a hash return value and the number of times it occurs will be the value.
		
		# Implicit:
			# 
		
# Examples:

# vehicles = [
  # 'car', 'car', 'truck', 'car', 'SUV', 'truck',
  # 'motorcycle', 'motorcycle', 'car', 'truck'
# ]

# car => 4
# truck => 3
# SUV => 1
 #motorcycle => 2

# Data Structure: Arrays and Hashes

# Algorithm
	# Iterate through the array
	# count how many times an element occurs
	# Place this integer as the value in the hash at the key of the element
	# Return the hash.

# Code:

def count_occurrences(array)
	occurrences = array.each_with_object({}) do |string, hash| 
		count = array.count(string)
		hash[string] = count
	end 
	
	occurrences.each do |key, value|
		puts "#{key} => #{value}"
	end 
end 
	
 vehicles = [
   'car', 'car', 'truck', 'car', 'SUV', 'truck',
   'motorcycle', 'motorcycle', 'car', 'truck'
 ]
 
 count_occurrences(vehicles)