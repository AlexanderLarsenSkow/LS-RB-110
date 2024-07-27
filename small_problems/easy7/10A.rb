# Further Explorations Finding the middle word with edge cases

# Algorithm: 
	# if the string size is less than or equal to 1, return the input string
	# Set middle index equal to the array size divided by 2 
	# Split the string into a words array
	# Return the value at the middle index

def middle_word(string)
	array = string.split
	return string if array.size <= 1
	
	middle_index = array.size / 2
	middle_index -= 1 if middle_index.even?
	
	array[middle_index]
end 

p middle_word('I love hot sauce') == 'love'
p middle_word('This is great') == 'is'
p middle_word('Yo') == 'Yo'
p middle_word('') == ''