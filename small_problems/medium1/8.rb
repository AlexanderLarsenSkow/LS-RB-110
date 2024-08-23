# PEDAC

# Problem:
	# Expected Input: number n
	# Expected Output: the fibonacci number of adding the last 2 numbers together

	# Rules:
		# Explicit:
		  # Need to use recursion to add the numbers together.
		  # n - 1 is the most recent number
		  # n - 2 was 2 numbers ago.
		  # The Fibonacci Sequence adds the most 2 recent numbers together:
		    # So, it starts at 1 and 1
		    # 1 + 1 = 2
		    # F1 = 2, F2 = 1
		    # 2 + 1 = 3
		    # F1 = 3, F2 = 2
		    # 2 + 3 = 5, and so on.

		# Implicit:

# Examples:
  # fibonacci(1) == 1
  # fibonacci(2) == 1
  # fibonacci(3) == 2
  # fibonacci(4) == 3
  # fibonacci(5) == 5
  # fibonacci(12) == 144
  # fibonacci(20) == 6765


# Data Structure:
  # no array or hash needed

# Algorithm:
  # if n is equal to 1, return n
  # if not, n = (fibonacci n - 1) + (fibonacci n - 2)

# Code:

def fibonacci(n)
  if n < 2
    n

  else
    n = fibonacci(n - 1) + fibonacci(n - 2)
  end
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765