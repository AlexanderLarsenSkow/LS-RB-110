# Is it Prime?

# PEDAC

# Problem:
	# Expected Input: integer vale
	# Expected Output: true or false boolean based on whether the number is prime

	# Rules:
		# Explicit:
		  # Write a method that determines whether a number is prime or not
		  # A number is prime if it is divisible only by 1 and itself.
		  # Return true if prime and false if not prime

		# Implicit:
		  # 1 IS NOT  prime

# Examples:
  # puts(is_prime(1) == false)              # true
  # puts(is_prime(2) == true)               # true
  # puts(is_prime(3) == true)               # true
  # puts(is_prime(4) == false)

# Data Structure:
  # I like the idea of pushing divisors into an array if they evenly divide the number.

# Algorithm:
  # Make an array with 1 and the number
  # Iterate down each number and place the number in the array only if it evenly divides the input number
  # If the size of the array is greater than 2, return false. If not, return true.

# Code:

def is_prime(number)
  divisors = []

  number.downto(1) do |n|
    divisors << n if number % n == 0
  end
  divisors.size == 2
end

puts(is_prime(1) == false)              # true
puts(is_prime(2) == true)               # true
puts(is_prime(3) == true)               # true
puts(is_prime(4) == false)              # true
puts(is_prime(5) == true)               # true
puts(is_prime(6) == false)              # true
puts(is_prime(7) == true)               # true
puts(is_prime(8) == false)              # true
puts(is_prime(9) == false)              # true
puts(is_prime(10) == false)             # true
puts(is_prime(23) == true)              # true
puts(is_prime(24) == false)             # true
puts(is_prime(997) == true)             # true
puts(is_prime(998) == false)            # true
puts(is_prime(3_297_061) == true)       # true
puts(is_prime(23_297_061) == false)     # true