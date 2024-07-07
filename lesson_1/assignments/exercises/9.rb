# Write a method that takes a string as input and capitalizes every word, like a title.

# Understanding the Problem:
	# Rules: Every word in the string must be capitalized.
	# Create a copy, don't mutate the original.
	
	# Expected Input: string
	# Expected Output: string like a title

# Examples: 
	# 'I like chicken' => I Like Chicken
	# '' => ''
	# 'sally sells sea shells down by the sea shore' == 'Sally Sells Sea Shells Down By The Sea Shore'
	
# Data Structure: Array 
	# Transfer the string into an array with the #split method.
	
# Algorithm: 
	# Create an empty string
	# Split the string into separate parts 
	# capitalize every part 
	# rejoin the string
	# Assign it to the empty string.
	# return that new string.

def titalize(string)
	split_words = string.split(' ') # => ['i', 'am', 'a', 'test']
	titalized_array = split_words.map { |word| word.capitalize } # => ['I', 'Am', 'A', 'Test']
	titalized_array.join(' ') # => 'I Am A Test'
end 

p titalize('i am a test')

p titalize('I like chicken') == 'I Like Chicken'
p titalize('') == ''
p titalize('sally sells sea shells down by the sea shore') == 'Sally Sells Sea Shells Down By The Sea Shore'

var = 'I eat poop'