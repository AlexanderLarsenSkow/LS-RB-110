# Diamonds!

# PEDAC

# Problem:
	# Expected Input: odd integer
	# Expected Output: * diamond shape with the middle row the odd integer number of stars
	
	# Rules:
		# Explicit:
			# Write a method that takes an odd integer and creates a diamond shape (*) 
			# The middle row will be the odd integer number of stars. 
			# The outer rows will decrease by 2. 
		
		# Implicit:
	
# Examples:
	# diamond(5) => [1, 3, 5, 3, 1] print each number muliplying the * symbol 
=begin	 *		(max spaces here, on left and right) then, spaces get smaller when we get more stars 
				*** (1 space, right and left)
			 ***** (no spaces here.)
			  *** 
			   * (2 spaces, right and left)
			   
			   *
			  ***
			   *
=end 

# Data Structure:
	# Array

# Algorithm:
	# ARRAY METHOD
		# Create an empty array odd integers
		# Take every number from 1 to the input number and add those numbers into the array if they are odd
		# Take every number from -2 of the input number down to 1 and add them to the array if they are odd.
	
	# SPACES METHOD
		# Input:
			# Take odd_integers_array -input
		# Output
			# Return the number of spaces for each line  1 => number / 2 3 number / 2 - 1, number should be 0 
		
		# Algorithm:
			# Create an empty array called spaces_collection
			# Create a variable spaces equal to the number divided by 2 
			# Iterate through the odd_integers_array
			# If number is 1, then add the spaces variable
			# For every increasing number, -1 to spaces
			# Spaces should be 0 during the largest number.
			# Return the new spaces array
	
	# MAIN METHOD
		# Create a variables stars = to the star symbol
		# Create a variable space equal to a space
		# Create a variable index equal to 0
		# Create variable spaces equal to the spaces array
		# Create a variable odd integers equal to that array
		# Iterate through odd integers and make space equal to the element at index in the spaces array
		# Output space + star + space
		# Increment the index

# Code:

def odd_integers_array(number)
	decreasing_start_integer = number - 2
	odd_integers = []
	
	1.upto(number) do |num|
		odd_integers << num if num.odd?
	end
	
	decreasing_start_integer.downto(1) do |num|
		odd_integers << num if num.odd?
	end
	
	odd_integers
end 

def make_spaces(number)
	spaces_array = []
	spaces = (number / 2)
	space = ' '
	
	odd_integers_array(number).each do |num|
		spaces += 1 if spaces_array.include?(0)
		spaces_array << spaces 
		spaces -= 1 unless spaces_array.include?(0)
	end 
	spaces_array.map { |num| space * num }
end 

#p make_spaces(5) #== [2, 1, 0, 1, 2]

def diamond(number)
	odd_integers = odd_integers_array(number)
	spaces = make_spaces(number)
	star = '*' 
	index = 0
	
	odd_integers.each do |num|
		space = spaces[index]
		puts space + (star * num) + space
		index += 1
	end 

end 

diamond(9)
diamond(5)