# Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century
# number, and ends with st, nd, rd, or th as appropriate to the number.

# Understanding the Problem:
	# Expected Input: year integer
	# Expected Output: number string with 'th', 'nd', 'st', 'rd' added to the end.
	
	# Rules:
		# - Must return a string
		# - Must have the letter endings to the different centuries.
		# - New Centuries begin in years that end in 01
		# - Centuries are divided by 100
			# - 0 - 99 is 1
			# - 100 - 199 is 2
		# -If the year ends in 4, 5, 6, 7, 8, 9, or 0, it always has 'th'
		# - If the year ends in 1 it always ends with 'st' except for 11
		# -if the year ends in 2 it always ends with 'nd' except for 12
		# if the year ends in 3 it always ends with 'rd' except for 13
			# Exceptions: 11, 12, 13 all end with 'th'

# Examples: 
# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st' 								year.length < 100 # => 1
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th' 

# 1st, 2nd, 3rd, 4th, 5th, 6th, 7th, 8th, 9th, 10th, 11th, 12th, 13th, 14th, 15th, 16th, 17th, 18th, 19th, 20th,

# Data Structure: 
	# Maybe a hash structure for the ending values?  
	
# Algorithm: 
	# 1. Create a variable century to reference the century 1. 
	# 2. Create a variable current_year to reference the year 0
	# 3. Increase the value of current year by 1
	# 4. Increase the value of the current century by 1 whenever the current year reaches the next hundred.
		# - Can't use strict equality to do this. Every time the 
	# 5. Repeat until the current year equals the year input.
	# 6. Add the ending string to the value based on the last integer.
		# - Create an array with the different number endings
		# - If a value ends in 4 to 0, it always ends with 'th'
		# - If a value ends in 1, it always ends in 'st' except for 11
		# - If a value ends in 2, it always ends in 'nd' except for 12
		# - If a value ends in 3, it always ends in 'rd' except for 13
		# - Return the string value.
	
	p 'abc'[-1]
	array = [1, 2, 3, 4, 5, 6]
	
	p array[1, 3].include?(3)
	
	NUM_ENDINGS = {
		'th' => ['0', '4', '5', '6', '7', '8', '9', '10','11', '12', '13'],
		'st' => '1',
		'nd' => '2',
		'rd' => '3'
	}
	
	
	def century(year)
		current_year = 0
		current_century = 1
		
		loop do 
			current_year += 1
			current_century += 1 if current_year.to_s[-2, 2] == '01' 
			
			break if current_year == year
		end 
		current_century
	end 
	
	def add_ending(year)
		century_var = century(year).to_s 
		
		NUM_ENDINGS.each do |ending, element|
			if ending == 'th'
				element.each do |number|
					if century_var[-2, 2] == number || century_var[-1] == number
						century_var += ending += ' century'
					end 
				end 
				elsif century_var[-2, 2] == element || century_var[-1] == element
					century_var += ending += ' century'
			end
		end 
			century_var
	end 
	
p century(601)	
p century(1701)

p add_ending(601) 
p add_ending (101)
p add_ending(1555)
p add_ending(2000) 
p add_ending(2001) 
p add_ending(1965) 
p add_ending(256) 
p add_ending(5)
p add_ending(10103) 
p add_ending(1052) 
p add_ending(1127)
p add_ending(11201)
	
