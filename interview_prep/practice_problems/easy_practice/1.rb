# Write a method that takes an array of numbers as an argument. For each number, determine how many numbers in the array are smaller
  # than it.
# Only count numbers once. So, if there are copies of a number, you would only count 1 of them.

# Input: array of numbers
# Output: array of numbers based on how many numbers are smaller than each number.

# Rules:
  # for each number, find out how many numbers are smaller than that number.
  # Do not count copies. Every number should only be counted once.
  # Place the number of numbers that are less than the current number in the new array

# Examples:
# p smaller_numbers_than_current([8, 1, 2, 2, 3]) == [3, 0, 1, 1, 2] # => 2 appears twice but is only counted once
# p smaller_numbers_than_current([7, 7, 7, 7]) == [0, 0, 0, 0] # => all numbers the same, no numbers smaller
# p smaller_numbers_than_current([6, 5, 4, 8]) == [2, 1, 0, 3] # => standard
# p smaller_numbers_than_current([1]) == [0] # => 1 value, 0

# my_array = [1, 4, 6, 8, 13, 2, 4, 5, 4]
# result   = [0, 2, 4, 5, 6, 1, 2, 3, 2] # lots of duplicates
# p smaller_numbers_than_current(my_array) == result

# Data Structures:
  # Arrays
  # My first instinct here is to partition the array by numbers that are smaller than our current number and take the size of that
  # We could call uniq on that partition as well, doing that during iteration of the overall array.
  # Then we place the integer value of the size into a sizes array, which is returned. Alternatively, we could map the array.

# Algorithm:
  # Iterate over the input array with map
  # For each number, uniq and partition the array by each number being bigger or smaller than the current_number
  # Take the smaller numbers array size and use this as teh return value for the block on map.
  # This map invocation array is the return value.

def smaller_numbers_than_current(int_array)
  int_array.map do |integer|
     int_array.uniq.partition { |int| int >= integer }[1].size
  end
end

p smaller_numbers_than_current([8, 1, 2, 2, 3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([7, 7, 7, 7]) == [0, 0, 0, 0]
p smaller_numbers_than_current([6, 5, 4, 8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

my_array = [1, 4, 6, 8, 13, 2, 4, 5, 4]
result   = [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current(my_array) == result

