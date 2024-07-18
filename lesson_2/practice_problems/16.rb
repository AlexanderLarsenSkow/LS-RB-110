# Write a method that returns one UUID when called with no parameters.
# look like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"
# Split into 5 sections 8, 4, 4, 4, 12
# Represented as a string.


# PEDAC

	# Understanding the Problem:
		# I have to randomly generate these uuid sections with alphanumeric strings.
		# Rules: 
			# Has to be strings
			# split into 5 sections, divided by -'s. split/join usage?
		
		# Expected Input: none
		# Expected Output: full uuid with 32 characters
		
	# Examples and Test Cases 
	
		# make_uuid # => "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"
		
	# Data Structures: 
		# Using arrays for each section. Fill up until they're 8, 4, 4, 4, 12 elements in size.
	
	# Algorithm: 
		# Create an empty array for the first section.
		# Create another empty array for the second section.
		# Create a third empty array...
		# Fourth...
		# Fifth...
		
		# Create variables to reference random elements from a range of alphanumeric strings
		# Iterate through the first array until it's full at 8 characters.
		# Iterate through the second array until it's full at 4 char
		# Same for 3rd array
		# Same for 4th array
		# Iterate through the fifth array until it's full at 12 char.
		
		# Add '-' to the ends of each array, except the last.'
		# Join each array.
		# Add to each other.


def make_string(randomizer, char_num) 
	string = ''
	count = 0
	
	loop do
		string << randomizer.sample
		count += 1 
		break if count == char_num
	end
	string
end 

def randomizer
	a = ('0'..'9').to_a
	a << ('a'..'f').to_a
	a.flatten
end 

def make_uuid
	array = []
	first = make_string(randomizer, 8)
	second = make_string(randomizer, 4)
	third = make_string(randomizer, 4)
	fourth = make_string(randomizer, 4)
	fifth = make_string(randomizer, 12)
	
	array.push(first, second, third, fourth, fifth)
	array.join('-') 
end 

p make_uuid # => a random UUID!

