# Combining Arrays 

# Write a method that combines the elements in two arrays, with no duplicate elements in the final value.

# Understanding the Problem:
	# Expected Input: 2 arrays
	# Expected Output: 1 merged array
	
	# Rules
		# There can be no duplicates.
		
# Examples:
	# merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
	
# Data Structures: Arrays

# Aglorithm:
	# 1. Make a count variable 
	# 2. Create an empty result array
	# 3. Add the first element from each array to the new array
	# 4. In crease 1 to the count with each loop
	# 5. Stop adding when the element in > than the size of the second array
	
def merge(array1, array2)
	result = []
	count = 0
	
	loop do 
		break if count >= array1.size
		el_one = array1[count]
		el_two = array2[count]
		result.push(el_one, el_two)
		count += 1 
	end 
	result.uniq.sort
end 

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]