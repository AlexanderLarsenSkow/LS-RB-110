# PEDAC

# Problem
  # Input: array of integers
  # Output: sum integer value

  # Explicit Rules:
    # Take the subarrays of integers from the input array and return the sum with the maximum value.
    # Edge Cases:
      # if empty array, return 0
      # if all negative numbers, return 0
      # if all positive numberes, return sum.

    # If mix of positive and negative integers, go through the subarrays and find the greatest sum from the subarrays.

# Examples:
  # p max_sequence([]) == 0
  # p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
  # p max_sequence([11]) == 11
  # p max_sequence([-32]) == 0
  # p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12

# Data Structures:
  # Arrays
  # max method to return the greatest sum
  # creating an empty sums array and putting each sum of each subarray inside that array
  # take the highest sum of that array and return it.
  # If condition earlier in the method for - number cases and empty array cases

# Algorithm:
  # Create an empty sums array
  # if the array contains all negative numbers or is empty, return 0
  # build out subarrays
  # Push the sum of each subarray into the sums array
  # Return the max of this array

# Building Subarrays METHOD
  # Input: array (elements greater than 2)
  # output should be an array of subarrays
    # create an empty array
    # create a variable index equal to 0
    # create a slice variable equal to 2
    # increase the value of index if slice is equal to the size of the array - the index
    # break when index is equal to the size - 1
    # add each slice to the empty array
    # Return this array

def build_subarrays(integers)
  subarrays = []
  index = 0
  slice = 1

  loop do
    subarrays << integers[index, slice]

    if slice == integers.size - index
      index += 1
      slice = 0
    end

    slice += 1
    break if index >= integers.size
  end
  subarrays
end

def max_sequence(integers)
  if integers.empty? || integers.all? { |n| n < 0 }
    return 0
  end

  build_subarrays(integers).map { |subarray| subarray.sum }.max
end

 p max_sequence([]) == 0
 p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
 p max_sequence([11]) == 11
 p max_sequence([-32]) == 0
 p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12