# Next Featured Number Higher than Input Value

# PEDAC

# Problem:
	# Expected Input: integer value
	# Expected Output: next integer value that is a featured number

	# Rules:
		# Explicit:
		  # Write a method that returns the next featured number after the input number
		  # A featured number is a number that
		    # - is a multiple of 7
		    # - is odd
		    # - has digits that only appear once. So 49 is a featured number but 133 is not (two 3's)
		    # Return the next featured number after the input.

		# Implicit:

# Examples:
  # Featured(12) == 21
  # featured(20) == 21
  # featured(21) == 35

# Data Structure:
  # I'm not sure we need a data structure here. I'm going to increment the value until it returns true.

# Algorithm:
  # Call the input number.
  # Increase the value until we have a featured number, then return that number.

  # featured? METHOD
    # if the number is odd, is divisible by 7, and has uniqeq digits, return true

# Code:

def featured?(number)
  number.odd? && number % 7 == 0 && number.digits.all? { |digit| number.digits.count(digit) == 1 }
end

def featured(number)
  loop do
    number += 1
    return number if featured?(number)
  end
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

#p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements