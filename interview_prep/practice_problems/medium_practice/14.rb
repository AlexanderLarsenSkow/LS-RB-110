# Write a method that takes a single integer argument and returns the sum of all the multiples of 7 or 11 that are less than t
  # argument
  # if a number is a multiple of both numbers, count it one time. -> 77 counts once.

# 25 => 7, 11, 14, 21, 22 and the sum is 75
# if the argument is -, return 0

# Input: integer
# Output: sum of all multiples of 7 or 11

# Rules:
  # take all multiples of 7 and 11 up to the input number
  # Add these numbers together, return this sum
  # if a number is a multiple of 7 and 11, count it once
  # return 0 if the input number is negative

# Examples:
# p seven_eleven(10) == 7
# p seven_eleven(11) == 7
# p seven_eleven(12) == 18
# p seven_eleven(25) == 75
# p seven_eleven(100) == 1153 # 77 should only count one time.
# p seven_eleven(0) == 0
# p seven_eleven(-100) == 0

# Data Structures:
  # Arrays
  # Iterating from 1 to the input number
  # Add each multiple of 7 or 11 to a multiples array
  # summing the multiples at the end

# Algorithm:
  # Create an empty array
  # iterate from 1 to teh input number
  # if a number is a multiple of 7 or 11, we add teh number to the array
  # return the sum of the array

def seven_eleven?(number)
  number % 7 == 0 || number % 11 == 0
end

def seven_eleven(number)
  multiples = []

  (1...number).each do |current_num|
    multiples << current_num if seven_eleven?(current_num)
  end
  multiples.sum
end

p seven_eleven(10) == 7
p seven_eleven(11) == 7
p seven_eleven(12) == 18
p seven_eleven(25) == 75
p seven_eleven(100) == 1153
p seven_eleven(0) == 0
p seven_eleven(-100) == 0