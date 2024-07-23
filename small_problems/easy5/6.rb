# Letter Count 
	# Return a hash that shows the number of words of different sizes.
	
# Understanding the Problem:

	# Expected Input: string
	# Expected Output: hash with integers. The key is the string.size and the value is the number of words at this
	
	# Rules:
	# Return the number of strings with that count as the value
	# Return the string size as the key

# Examples:
	# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
	# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
	# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
	# word_sizes('') == {}

# Data Structure: Arrays / hash

# Algorithm:
	# 1. split the string into an array. Split by spaces.
		# Iterate through the array and place each string size into a new array.
	# 2. Iterate through the array and save the string.size into the size variable
	# 3. save the number of strings at that size into a new variable count
	# 4. Set size as the key for the hash
	# 5. Set the count as the value 
	# 6. return the hash

def string_sizes(string) 
  result = []
  arr = string.split(' ')
  arr.each do |string|
    result << string.size
  end
  result
end 

def word_sizes(string)
  arr = string.split(' ')
  sizes_array = string_sizes(string)

  result = arr.each_with_object({}) do |string, hash|
  	count = 0
  	sizes_array.each do |num|
  	 count += 1 if string.size == num
  	end 
  	size = string.size
  	hash[size] = count
  end 
  result
end 

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}