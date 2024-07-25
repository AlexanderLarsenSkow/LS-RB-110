# Reversed Array Part 2 

# Reverse the array but this time don't mutate the original.
# Don't use Array # reverse

# Algorithm:
	# 1. Create an empty array.
	# 2. Set forward_index equal to 0
	# 3. Set rear_index equal to -1 
	# 4. Set first value in new array = to last value of original array
	# 5. Continue setting values equal until the forward_index is > than the size of the original.
	# 6. return the new array.
	
# Code

def reverse(array) 
	reversed_array = []
	forward_index = 0
	rear_index = -1
	
	until forward_index >= array.size
		reversed_array[forward_index] = array[rear_index]
		forward_index += 1 
		rear_index -= 1 
	end 
	reversed_array
end 


	
p reverse([1, 2, 3, 4]) == [4, 3, 2, 1]         # => true
p reverse([1, 2, 3, 4, 1]) == [1, 4, 3, 2, 1]   # => true
p reverse(%w(a b e d c)) == %w(c d e b a)       # => true
p reverse(['abc']) == ['abc']                   # => true
p reverse([]) == []                             # => true

list = [1, 3, 2]                                # => [1, 3, 2]
new_list = reverse(list)                        # => [2, 3, 1]
p list.object_id != new_list.object_id          # => true
p list == [1, 3, 2]                             # => true
p new_list == [2, 3, 1]                         # => true