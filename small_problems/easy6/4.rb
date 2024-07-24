# Reversed Arrays Part 1 

# Write a method that mutates an array by reversing its elements.
# You can't use # reverse! or reverse 

# PEDAC

# Understanding the Problem:

	# Expected Input: array 
	# Expected Output: new reversed array and reversed original array
	
	# Rules:
		# This method must be destructive
		# You can't use reverse! or reverse
		
# Examples:
	
	# list = [1, 2, 3, 4]
	# result = reverse!(list)
	# p result == [4, 3, 2, 1] # true
	# p list == [4, 3, 2, 1] # true
	# p list.object_id == result.object_id # true
	
# Data Structure: Array

# Ideas: 
	# 1. map! 
	# 2. sort!
	# loop 
	
# Algorithm:
	# 1. Set count equal to array size - 1 (last index value)
	# 2. Set the value at the last index in the array equal to the first value 
	# 3. - 1 from count 
	# 4. Add 1 to the starting_count
	# 5. Return the array
	
	def reverse!(array) 
		forward_index = 0
		rear_index = array.size - 1
		
		array_values = array.each_with_object([]) do |element, arr| 
			arr << element
		end
		
		until rear_index < 0
			array[rear_index] = array_values[forward_index]
			rear_index -= 1 
			forward_index += 1 
		end
		array 
	end 
	
list = [1, 2, 3, 4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
	
list = [1, 2, 3, 4, 1]
result = reverse!(list)
p result == [1, 4, 3, 2, 1] # true
p list == [1, 4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true
	