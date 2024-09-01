# Write a method that takes an array of integers and returns the integer that appears an odd number of times.
# There will always be exactly one such integer in teh array.

# Input: array of integers
# Output: integer that appears odd number of times.

# Rules:
  # return teh integer that appears an odd number of times
  # there's always 1 integer that appears this many times, so don't worry about multiples values.

# Examples:
# p odd_fellow([4]) == 4 # 4 1 time
# p odd_fellow([7, 99, 7, 51, 99]) == 51 # 51 1 time
# p odd_fellow([7, 99, 7, 51, 99, 7, 51]) == 7 # 7 3 times
# p odd_fellow([25, 10, -6, 10, 25, 10, -6, 10, -6]) == -6 # - 6 3 times
# p odd_fellow([0, 0, 0]) == 0 # 0 3 times

# Data Structures:
  # Arrays
  # Iterate through the input array
  # Take the count of each number
  # if the number's count is odd, return the number.

# Algorithm:
  # See above

def odd_fellow(int_array)
  int_array.each { |num| return num if int_array.count(num).odd? }
end

p odd_fellow([4]) == 4
p odd_fellow([7, 99, 7, 51, 99]) == 51
p odd_fellow([7, 99, 7, 51, 99, 7, 51]) == 7
p odd_fellow([25, 10, -6, 10, 25, 10, -6, 10, -6]) == -6
p odd_fellow([0, 0, 0]) == 0
