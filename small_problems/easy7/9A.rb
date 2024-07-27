# Further Explorations on Exercise 9

# Algorithm:
	# Create an empty array
	# Iterate over the outer collection
	# Iterate over the inner collection
	# Multiply the outer and inner elements together
	# push these values into the new array
	# Return the new array.

def multiply_all_pairs(array1, array2)
	result = array1.each_with_object([]) do |outer_num, arr| 
		array2.each do |inner_num|
			arr << (outer_num * inner_num)
		end 
	end 
	result.sort
end 

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]