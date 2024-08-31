# Write a method that returns the MINIMUM sum of 5 consecutive numbers in an array.
# If the array contains fewer than 5 numbers, the return value should be nil.

# input: Array of integers
# output: integer value representing the minimum sum of 5 numbers or nil

# Rules:
  # Given an array of integers, return the smallest sum of 5 integers.
  # If there are less than 5 integers, return nil
  # Remember, the smallest sum

# Examples:

# p minimum_sum([1, 2, 3, 4]) == nil # fewer than 5
# p minimum_sum([1, 2, 3, 4, 5, -5]) == 9 # first 5
# p minimum_sum([1, 2, 3, 4, 5, 6]) == 15 # first 5
# p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16 # 2, 6, 5, 1, 2 since they're the smallest
# p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10 # taking the smallest sum.

# Data Structures:
  # Arrays again
  # The idea is to build subarrays that are up to 5 numbers long from 0 to array.size - 5, or in there somewhere
  # Then we take the sum of each subarray and add that into a sums array
  # Then we take the min from the sums array and return it

# Algorithm:
  # return nil if array size is less than 5
  # Create an empty sums array
  # use Build subarrays method to create subarrays
    # METHOD
      # create an empty subarrays array
      # iterate from 0 to array_size - 5 with index representing the number
      # take the slice from the array at the index and length of 5
      # Add that to subarrays
      # return subarrays

  # Iterate through the subarrays and take the sum of each and add it to sums
  # Take the min from sums
  # return this value

def build_subarrays(array)
  subarrays = []

  (0..array.size - 5).each do |index|
    subarrays << array[index, 5]
  end
  subarrays
end

def minimum_sum(array)
  subarrays = build_subarrays(array)
  subarrays.map { |subarray| subarray.sum }.min
end

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, -5]) == 9
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10
