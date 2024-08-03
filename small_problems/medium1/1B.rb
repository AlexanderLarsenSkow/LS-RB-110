# Rotate Integer

# Algorithm:
	# Place the integer into an array of its digits
	# Take slices of the array
	# add the first element at the end
	# Join the array together and convert back to an integer.
	
def rotate_integer(integer)
	array = integer.digits.reverse
	result = array[1..-1] << array[0]
	result.join.to_i
end 

p rotate_integer(123) == 231

