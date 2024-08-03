# Double Doubles 

# PEDAC

# Problem:
	# Expected Input: Integer
	# Expected Output: Integer doubles unless number is a double double
	
	# Rules:
		# Explicit:
			# Write a method that doubles the input integer unless it is a double double
			# A double double is an integer with an even number of digits and has the same values on the left side as the right side.
		
		# Implicit:
			# If partioning down the middle of an array with these elements, double doubles should be equal to one another.
	
# Examples:
	# twice(37) == 74  not dd
	# twice(44) == 44 dd 
	# twice(334433) == 668866 # not dd
	# twice(3333) == 3333 # dd 
	# twice(103103) == 103103 dd


# Data Structure: Arrays

# Algorithm:
	# If the integer is a double double, return the number. If not, return the number multiplied by 2 
		# IS_DOUBLE_DOUBLE? METHOD CALL
			# Create an index variable equal to digits array size divided by 2
			# Create a digits array from the number
			# If the array size is even
			# partition the array by dividing it in two.
			# If the partitions are equal, return true. If not, false.
	
# Code:

def is_double_double?(number)
	first_half = 1
	second_half = 0
	digits_array = number.digits
	divider = digits_array.size / 2
	
	if digits_array.size.even? && digits_array.size > 1
		first_half = digits_array[0, divider]
		second_half = digits_array[divider, divider]
	end
	
	first_half == second_half
end 

def twice(number)
	if is_double_double?(number)
		number
	else 
		number * 2
	end 
end 

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10