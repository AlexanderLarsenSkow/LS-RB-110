# # PEDAC

# Problem:
	# Expected Input: 1 number representing the nth iteration of a fibonacci number
	# Expected Output: The fibonacci number at that nth iteration

	# Rules:
		# Explicit:
		  # Write a method that procedurally generates the fibonacci number for the nth number in the sequence.
		  # No recursion allowed.
		  # The Fibonacci Sequence involves adding the last two numbers together:
		    # 1 + 1 = 2 F(3)
		    # 2 + 1 = 3 F(4)
		    # 3 + 2 = 5 F(5)
		    # 5 + 3 = 8 F(6)
		    # and so on.

		# Implicit:
		  # Some kind of iteration will be necessary here.

# Examples:
  # fibonacci(2) == 1
  # fibonacci(5) == 5
  # fibonacci(20) == 6765

# Data Structure:
  # array?

  # Thoughts:
    # We'll need some way to hold the current values, so F1 and f2 maybe.
    # It has to stop when it has iterated nth number of times.
    # How can we do that?
    # Looping construct maybe would be best, since we don't have a collection to iterate over.

    # Pseduo Code:
      # Set F1 equal to 1
      # Set F2 equal to 2
      # If n is 2 or less, return the number n
      # Create count variable to count the iterations.
      # Break out of the loop when count is equal to the number n
      # Do something in here with F1 and F2. F1 equals F1 + F2 or something,
      # F2 equals F2 + F1.
      # Could do either one depending on the odd / even iteration. That's a good idea. Let's do that.
      # If F2 is greater return F2. If F2 is greater, return F2

# Algorithm: That is the algorithm LOL

# Code:

def fibonacci(n)
  return 1 if n <= 2

  f1 = 1
  f2 = 1
  count = 2

  loop do
    break if count >= n

    if count.even?
      f1 = f1 + f2

    else
      f2 = f2 + f1
    end

    count += 1
  end

  if f1 > f2
    f1

  else
    f2
  end
end

p fibonacci(2) == 1
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501