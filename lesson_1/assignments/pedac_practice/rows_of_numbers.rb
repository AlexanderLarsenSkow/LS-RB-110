=begin 

Create an empty rows array to hold all of our rows
Create a row array and add it to the overall rows array
	- Initialize a variable to reference the consecutive even numbers
Repeat step 2 until all the necessary rows have been created 
	-All the rows have been created when the length of the rows array is equal to the input 
Sum the final row
Return the sum

Examples: 
1 --> [2]
2 --> [4, 6]
3 --> [8, 10, 12]
...
=end

# row_number --> start_integer 
# 1 --> 2
# 2 --> 4
# 3 --> 8 2
# 4 --> 14 2
# 5 --> 22 3
# 6 --> 32 4
# 7 --> 49 5
# 8 --> 58 6

# sum_even_number_row 

# We need to get the start_integer from the row_number
# if the row_number is 2 or less, reassign its value to its own value to the 2nd power
# If the value is greater than 2, we need to subtract an incrementing number from the value of reassigning the variable
# to the power of 2.

# 			- 3's starting integer is 8, 1 less than 3 squared.
# 			- 4's starting integer is 14, 2 less than 4 squared.
#				- 5's starting integer is 22, 3 less than 5 squared.

		# - initialize a variable minus_num to value of 1, the first minus_num for input value of 3.
		# - initialize row variable to 3, the first value where we minus a number from the power.
		# - 
		# - Increment minus_num by 1 
		# - Subtract the final value from the power reassignment.




def sum_even_number_row(row_number)
	start_integer = row_number
	
	if row_number <= 2
		start_integer **= 2
	
	else 
		minus_num = 1
		rows = 3
		
		loop do 
			break if rows == row_number
			rows += 1
			minus_num += 1
		end 
		start_integer = ((start_integer ** 2) - minus_num)
	end
	
	create_row(start_integer, row_number).sum
end

def create_row(start_integer, row_length)
	row = []
	current_integer = start_integer
	
	loop do
		row << current_integer
		current_integer += 2
		break if row.length == row_length
	end
	
	row 
end 
p create_row(134, 12)# - 10
p create_row(112, 11)# - 9
p create_row(92, 10)# - 8
p create_row(74, 9) # - 7
p create_row(58, 8) # - 6
p create_row(44, 7) # - 5
p create_row(32, 6) # - 4
p create_row(22, 5) # - 3
p create_row(14, 4) # - 2

p sum_even_number_row(1)
p sum_even_number_row(2)
p sum_even_number_row(3) # => [8, 10, 12] 30
p sum_even_number_row(4)
p sum_even_number_row(5)

p sum_even_number_row(2) == 10 # true
p sum_even_number_row(4) == 68 # true

p create_row(2, 1)
p create_row(4, 2)
p create_row(14, 4)
# p create_row(2, 1) == [2] # true
#p create_row(4, 2) == [2, 4] # true
#p create_row(14, 4) == [14, 16, 18, 20] # true
