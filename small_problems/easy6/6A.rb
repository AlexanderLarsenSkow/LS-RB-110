# Combining Arrays: New Methods

# Algorithm: 
	# 1. Iterate over both arrays 
	# 2. Add each element to the returned array in each_with_object
	# 3. Return a uniqued array
	
	
def merge(array1, array2)
	result = array1.each_with_object([]) do |el_one, arr|
		array2.each do |el_two|
			arr.push(el_one, el_two)
		end 
	end 
	result.uniq.sort
end 

p merge([1, 3, 5], [3, 6, 9]) #== [1, 3, 5, 6, 9]

def merge!(array1, array2)
	array2.each do |el| 
		array1 << el
	end 
	array1.uniq!
end 

array_test = [1, 3, 5]

p merge!(array_test, [3, 6, 9]) #== [1, 3, 5, 6, 9]
p array_test # => [1, 3, 5, 6, 9]

