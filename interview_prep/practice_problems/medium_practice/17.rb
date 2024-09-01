# Write a method that takes an array of integers
# The method should determine the minimum integer value that can be appended to teh array so the sum of all elements
  # equal the closest prime number that is greater than the current sum

# [1, 2, 3] => 6 nearest prime number is 7.
# add 1 to the array [1, 2, 3, 1] => sum == 7

# the array will always contain 2 integers
# all values must be positive
# there may be duplicates

# Input: array of integers
# Output: integer value added to the sum that makes the sum of the array equal a prime number

# Rules:
  # Return the integer that, added to teh sum of the integers, makes the sum a prime number
  # there can be duplicates
  # all number are positive
  # array always has 2 numbers
  # a prime number is a number only divisble by itself and 1

# Examples:
# p nearest_prime_sum([1, 2, 3]) == 1        # Nearest prime to 6 is 7
# p nearest_prime_sum([5, 2]) == 4           # Nearest prime to 7 is 11
# p nearest_prime_sum([1, 1, 1]) == 2        # Nearest prime to 3 is 5
# p nearest_prime_sum([2, 12, 8, 4, 6]) == 5 # Nearest prime to 32 is 37

# # Nearest prime to 163 is 167
# p nearest_prime_sum([50, 39, 49, 6, 17, 2]) == 4

# Data Structures:
  # Arrays
  # Sum the array
  # iterate from the sum to the nearest prime number
    # if prime?
      # take the prime number and - the sum, this is the number we need to append. 7 - 6 == 1
  # return that appended value.

  # problems
    # what to iterate to?
      #
    # how to determine if something is prime?
      # iterate from 0 to the number
      # if the number if divisble by 1 or itself, then it's prime. Else, it's not prime.

# Algorithm:
  # sum the array
  # Add 1 to sum until sum is the next prime number.
    # prime?
      # METHOD
        # create an array of numbers from 2 to 9
        # iterate over teh numbers
        # if the input number is divisible by one of these divisors and teh number does not equal the numebr, return false
        # else, return true

  # when it's prime, we - old sum from new sum
  # return that result

def is_prime?(number)
  numbers = [2, 3, 4, 5, 6, 7, 8, 9]
  !numbers.any? { |num| number % num == 0 && number != num }
end

def nearest_prime_sum(int_array)
  sum = int_array.sum
  new_sum = sum + 1

  new_sum += 1 until is_prime?(new_sum)
  new_sum - sum
end

p nearest_prime_sum([1, 2, 3]) == 1        # Nearest prime to 6 is 7
p nearest_prime_sum([5, 2]) == 4           # Nearest prime to 7 is 11
p nearest_prime_sum([1, 1, 1]) == 2        # Nearest prime to 3 is 5
p nearest_prime_sum([2, 12, 8, 4, 6]) == 5 # Nearest prime to 32 is 37

# Nearest prime to 163 is 167
p nearest_prime_sum([50, 39, 49, 6, 17, 2]) == 4