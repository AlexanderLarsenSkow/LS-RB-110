# Write a method that takes an array of integers.
# Determine and return the index n for which all numbers with an index less than n sum to the same value as the
  # numbers with an index greater than n
# If there is no index that will make this happen, return - 1

# If you get an array with multiple possible indicies, return the smallest possible

# input: array of integers
# output: returning the index that splits up the array into even sums

# Rules:
  # return the index that splits the array into even sums
  # if there is no even sum, return - 1
  # if there are multiple answers, return the minimum index that does this.

# Examples:
# p equal_sum_index([1, 2, 4, 4, 2, 3, 2]) == 3 # left 7, right 7
# p equal_sum_index([7, 99, 51, -48, 0, 4]) == 1 # left, 7, right 7
# p equal_sum_index([17, 20, 5, -60, 10, 25]) == 0
# p equal_sum_index([0, 2, 4, 4, 2, 3, 2]) == -1

# # The following test case could return 0 or 3. Since we're
# # supposed to return the smallest correct index, the correct
# # return value is 0.
# p equal_sum_index([0, 20, 10, -60, 5, 25]) == 0

# Data Structures:
  # Arrays
  # paritition on this one
  # iterate from index 0 to the array size - 1
  # partition at the index. left side is all elements less than index, right side is all indicies greater than index
  # add sums that equal each other into an array
  # take the minimum of the array

# Algorithm:
  # Create an empty array equal sums indicies
  # iterate over the array of integers with partition with index
  # partition the array by indicies being smaller or greater than the current index.
  # delete the first element in the right side because it is the number at the index, and it is not included.
  # if the sums of the arrays are equal, add the current index to the empty array
  # return the minimum in this array

def equal_sum_index(array)
  equal_sums_indicies = []

  array.each_with_index do |num1, index1| # 0
    left_side, right_side = array.partition.with_index do |num2, index2| # 0
      index1 > index2
    end
    right_side.delete_at(0)
    equal_sums_indicies << index1 if left_side.sum == right_side.sum
  end

  return - 1 if equal_sums_indicies.empty?
  equal_sums_indicies.min
end

p equal_sum_index([1, 2, 3]) == - 1

p equal_sum_index([1, 2, 4, 4, 2, 3, 2]) == 3
p equal_sum_index([7, 99, 51, -48, 0, 4]) == 1
p equal_sum_index([17, 20, 5, -60, 10, 25]) == 0
p equal_sum_index([0, 2, 4, 4, 2, 3, 2]) == -1

# The following test case could return 0 or 3. Since we're
# supposed to return the smallest correct index, the correct
# return value is 0.
p equal_sum_index([0, 20, 10, -60, 5, 25]) == 0
