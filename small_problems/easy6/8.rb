# Find the Duplicate

# Write a method that finds and returns one duplicate element it finds in an array.

# Understanding the Problem:
	# Expected Input: Array
	# Expected Output: Duplicate element from the array
	
	# Rules:
		# NA
		
	# Assumptions:
		# You can assume that there only the first duplicate needs to be returned.
	
# Examples:
	# [1, 2, 2, 3] => 2
	
# Data Structure: Arrays

# Algorithm:
	# 1. Set a result variable equal to 0
	# 2. Iterate through the array with sort 
	# 3. Compare each value to one another
	# 4. If the values are equal, set that value equal to result
	# 5. Return the result.
	
def find_dup(array)
	result, slow_index, fast_index = 0, 0, 0 
	
	loop do 
		if array[slow_index] == array[fast_index] && slow_index != fast_index
			result = array[slow_index]
			break 
		end
		fast_index += 1
		if fast_index >= array.size
			fast_index = 0
			slow_index += 1
		end 
		
	end 
	result
end 
	
p find_dup([1, 5, 3, 1]) == 1
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73