# Write a method that takes an array of integers, all of which are the same except one.
# find and return the integer that is different from the others.

# Input: array of numbers
# Output: the number that is different

# Rules:
  # Every number in the array is the same, except one
  # Return the number that is different.

# Examples:
# p what_is_different([0, 1, 0]) == 1
# p what_is_different([7, 7, 7, 7.7, 7]) == 7.7
# p what_is_different([1, 1, 1, 1, 1, 1, 1, 11, 1, 1, 1, 1]) == 11
# p what_is_different([3, 4, 4, 4]) == 3
# p what_is_different([4, 4, 4, 3]) == 3

# Data Structures:
  # Arrays
  # iterate through the array with index1
  # iterate through the array again with index2
  # If the element at index1 is different from the element at index2,
  # return the current number.
  # The problem with this approach, is that sometimes the main number will get returned.
    # So how can isolate? by count.

# Algorithm:
  # Iterate through the array with index1
  # iterate again with index2
  # If the elements at this indexes are different, return the current value

def what_is_different(array)
  array.each { |num| return num if array.count(num) == 1 }
end

p what_is_different([0, 1, 0]) == 1
p what_is_different([7, 7, 7, 7.7, 7]) == 7.7
p what_is_different([1, 1, 1, 1, 1, 1, 1, 11, 1, 1, 1, 1]) == 11
p what_is_different([3, 4, 4, 4]) == 3
p what_is_different([4, 4, 4, 3]) == 3

