# Input: array of integers
# Output: array of two numbers that are closest in value

# Rules:
# Return the two numbers that are closest together in the array
# if there are multiple pairs that are equally close, return the first pair that is closest.

# Examples:
# p closest_numbers([5, 25, 15, 11, 20]) == [15, 11] # 15 11 closest
# p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27] # 25 and 27 closest (not next to each other)
# p closest_numbers([12, 22, 7, 17]) == [12, 7] # 12 7 occurs before 22 17 5 is the difference


# Data Structures:
  # build out pairs of different values? build pairs is the way to go
    # building pairs is the hardest part here.
    # [5, 25, 15, 11, 20] => [5, 25] [5, 15] [5, 11] [5, 20]
    # 0 2
    # 0 3
    # 0 4
    # 0 5

    # have to iterate. So for 0
      # iterate from 1 to the array size - 1
      # put array[0] in an array
      # add array[1]
      # the second iteration should be the array size - index1

  # then iterate over the subarrays of pairs and take the max - the min for the difference for each subarray.
  # put these in a differences array and find the min
  # iterate over the differences array and return the first pair that equals the min difference

  # iterate

  # Algorithm:
    # BUILD PAIRS
      # input: array
      # output: array of subarray pairs

      # iterate from 0 to the size of the array, this is index1
        # iterate from 0 to the size of the array.
        # put the element at array[index] in a subarray
        # add the element at the second index to the subarray
        # add the subarray to the pairs array
        # return pairs when finished iterating

    # METHOD FIND DIFFERENCE
        # take the max and minus the min from the array

    # MAIN METHOD
        # take the pairs subarray and add each difference to a differences array => map here
        # the closest_difference should be the minimum value from this array
        # iterate back over the pairs array and return the pair that equals this difference.

def pairs(array)
  pairs = []

  (0...array.size).each do |index1|
     (index1 + 1...array.size).each do |index2|
       pair = [array[index1]]
       pair << array[index2]
       pairs << pair
     end
  end
  pairs
end

p pairs([5, 15, 25, 20])

def find_difference(array)
  array.max - array.min
end

def closest_numbers(array)
  pairs = pairs(array)
  closest_diff = pairs.map { |pair| find_difference(pair) }.min

  pairs.each { |pair| return pair if find_difference(pair) == closest_diff }
end

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11] # 15 11 closest
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27] # 25 and 27 closest (not next to each other)
p closest_numbers([12, 22, 7, 17]) == [12, 7] # 12 7 occurs before 22 17 5 is the difference