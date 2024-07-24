# Exercise 8 with sort method instead of sort_by

# Algorithm:
	# 1. Define a collection of string numbers
	# 2. Sort the input array
	# 3. Set one variable equal to each element in the NUMBER_WORDS array

NUMBER_WORDS = %w(zero one two three four five six seven eight nine ten eleven twelve
thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

# NUMBER_WORDS

def make_hash(array) 
	hash = {}
	index = 0
	
	NUMBER_WORDS.each do |string|
	hash[string] = array[index]
		index += 1
	end 
	hash
end 

input_arr = (0..19).to_a
p make_hash(input_arr)

def alphabetic_number_sort(input_arr)
	sorted_arr = make_hash(input_arr).sort do |a, b|
		a <=> b
	end
	sorted_arr.to_h.values
end 

p alphabetic_number_sort(input_arr) == [8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0]
