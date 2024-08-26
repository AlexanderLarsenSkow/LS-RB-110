# Sum Square - Square Sum

# PEDAC

# Problem:
	# Expected Input: Integer input
	# Expected Output: Integer output that is the calucation of a weird formula lol

	# Rules:
		# Explicit:
		  # Write a method that calculates the difference of taking the square of sums from 1 to the number,
		  # with taking the square of each number from 1 to the number.

		# Implicit:

# Examples:
  # sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)

# Data Structure:
  # array maybe for sum method? could also use reduce
    # definitely use an array!
  # definitely use 1.upto etc etc

# Algorithm:
  # Calculate the squares of the sums first by transforming
  # Calculate the squares of each number then add them together.
  # Minus the second from the first


# Code:

def sum_square_difference(number)
  sum_square = (1..number).to_a.sum ** 2
  square_sum = (1..number).to_a.map { |num| num ** 2}.sum

  sum_square - square_sum
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150