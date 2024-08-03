# fizzbuzz 

# PEDAC

# Problem:
	# Expected Input: starting integer and ending integer
	# Expected Output: output of integers and string values
	
	# Rules:
		# Explicit: 
			# Write a method that outputs the integer if not divisble by 3 or 5
			# It outputs "Fizz" if divisible by 3
			# It outpus "Buzz" if divisible by 5
			# It outputs "Fizzbuzz" if divisible by both 3 and 5.
			
		
		# Implicit:
			# These are only outputs. You are not returning an array.
			# Condition for being divisible by 3 and 5 should come before the solo conditional statements.
	
# Examples:
	# fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

# Data Structure: Arrays

# Algorithm:
	# Take the starting integer and ending integer and place them in a range. 
	# Iterate over the range
	# Output the current_integer if not divisble by 3 or 5
	# Output "Fizz" if divisble by 3
	# Output "Buzz" if divisible by 5
	# Output "Fizzbuzz" if divisible by both
	# No return value needed

# Code:

def fizzbuzz(starting_int, ending_int)
	range = (starting_int..ending_int).to_a

	range.each do |num|
		if num % 3 == 0 && num % 5 == 0
			puts "Fizzbuzz"
		elsif num % 5 == 0
			puts "Buzz"
		elsif num % 3 == 0
			puts "Fizz"
		else
			puts num
		end
	end 
	range.include?(13)
end

p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz